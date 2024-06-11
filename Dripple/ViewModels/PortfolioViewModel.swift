//
//  PortfolioViewModel.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-31.
//

import Foundation
import Storage

@Observable
class PortfolioViewModel {
    
    // MARK: Stored properties
    // The list of portfolio items
    var portfolio: [PortfolioListItem] = []
    
    // Track when user items are initially being fetched
    var fetchingPortfolio: Bool = false
    
    // MARK: Initializer(s)
    init(portfolio: [PortfolioListItem] = []) {
        self.portfolio = portfolio
        Task {
            try await getPortfolio()
        }
    }
    
    // MARK: Functions
    func getPortfolio() async throws {
        
        // Indicate that app is in the process of getting user items from cloud
        fetchingPortfolio = true
        
        do {
            let results: [PortfolioListItem] = try await supabase
                .from("portfolio")
                .select()
                .order("id", ascending: true)
                .execute()
                .value
            
            self.portfolio = results
            
            // Finished getting note items
            fetchingPortfolio = false
            
        } catch {
            debugPrint(error)
        }
        
    }
    
    func createPortfolio(withName name: String, withAge age: String, withGender gender: String, withLocation location: String, withIntro intro: String, andImage providedImage: PortfolioListItemImage?) {
        
        // Create a unit of asynchronous work to add the user item
        Task {
            
            // Upload an image.
            // If one was not provided to this function, then this
            // function call will return a nil value.
            let imageURL = try await uploadImage(providedImage)
            
            // Create the new note item instance
            // NOTE: The id will be nil for now
            let portfolio = PortfolioListItem(
                name: name,
                age: age,
                gender: gender,
                location: location,
                intro: intro,
                imageURL: imageURL
            )
            
            // Write it to the database
            do {
                
                // Insert the new user item, and then immediately select
                // it back out of the database
                let newlyInsertedItem: PortfolioListItem = try await supabase
                    .from("portfolio")
                    .insert(portfolio)   // Insert the portfolio item created locally in memory
                    .select()       // Select the item just inserted
                    .single()       // Ensure just one row is returned
                    .execute()      // Run the query
                    .value          // Automatically decode the JSON into an instance of NotesItem
                
                // Finally, insert the user item instance we just selected back from the
                // database into the array used by the view model
                // NOTE: We do this to obtain the id that is automatically assigned by Supabase
                //       when the note item was inserted into the database table
                self.portfolio.append(newlyInsertedItem)
                
            } catch {
                debugPrint(error)
            }
        }
    }
    
    // We mark the function as "private" meaning it can only be invoked from inside
    // the view model itself (it will not be accessible from the view layer)
    private func uploadImage(_ image: PortfolioListItemImage?) async throws -> String? {
        
        // Only continue past this point if an image was provided.
        // If an image was provided, obtain the raw image data.
        guard let imageData = image?.data else {
            return nil
        }
        
        // Generate a unique file path for the provided image
        let filePath = "\(UUID().uuidString).jpeg"
        
        // Attempt to upload the raw image data to the bucket at Supabase
        try await supabase.storage
            .from("user_images")
            .upload(
                path: filePath,
                file: imageData,
                options: FileOptions(contentType: "image/jpeg")
            )
        
        return filePath
    }
    
    func downloadPortfolioListItemImage(fromPath path: String) async throws -> PortfolioListItemImage? {
        
        // Attempt to download an image from the provided path
        do {
            let data = try await supabase
                .storage
                .from("user_images")
                .download(path: path)
            
            return PortfolioListItemImage(rawImageData: data)
            
        } catch {
            debugPrint(error)
        }
        
        // If we landed here, something went wrong, so return nil
        return nil
        
    }
        
    func update(user updatedPortfolio: PortfolioListItem) {
        
        // Create a unit of asynchronous work to add the portfolio item
        Task {
            
            do {
                
                // Run the update command
                try await supabase
                    .from("portfolio")
                    .update(updatedPortfolio)
                    .eq("id", value: updatedPortfolio.id!)   // Only update the row whose id
                    .execute()                          // matches that of the user being deleted
                
            } catch {
                debugPrint(error)
            }
            
        }
        
    }
}


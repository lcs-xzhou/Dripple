//
//  CountingFeedbackView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-30.
//

import SwiftUI

struct SubCountingStructureView: View {
        
    let titleValue: String
    let variable: String
    
    var body: some View {
        VStack {
            HStack {
                Text(titleValue)
                    .fontWeight(.semibold)
                    .fontDesign(.rounded)
                    .foregroundColor(.brown1)
                Spacer()
            }
            HStack {
                Text(variable)
                    .font(.callout)
                    .fontDesign(.rounded)
                    .foregroundColor(.brown1)
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    SubCountingStructureView(titleValue: "waterNeeded", variable: "90 ml")
}

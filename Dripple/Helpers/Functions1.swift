//
//  Functions1.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-20.
//

import Foundation

func printCommandToOpenDatabaseFile() {
    let urls = FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask)
    let documentsDirectory = urls[0].absoluteString.trimmingPrefix("file://").replacing("%20", with: " ")
    let command = "open \"\(documentsDirectory)default.store\" -a \"/Applications/DB Browser for SQLite.app\""
    print(command)
}

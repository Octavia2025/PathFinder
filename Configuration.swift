//
//  Configuration.swift
//  PathFinder
//
//  Created by octavia on 31/3/2026.
//

import Foundation

enum Configuration {
    // This looks into your Info.plist for the key you created in Step 3
    static var apiKey: String {
        guard let token = Bundle.main.object(forInfoDictionaryKey: "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") as? String else {
            // This error helps you debug if the Info.plist setup is wrong
            fatalError("GitHub API Key not found in Info.plist. Check your Secrets.xcconfig setup.")
        }
        return token
    }
}

//
//  StatusAtribute.swift
//  liveActivityExtension
//
//  Created by Sagar Das on 12/06/23.
//

import ActivityKit

struct AdventureAttribute: ActivityAttributes {
    let hero: EmojiRanger
    
    struct ContentState: Codable, Hashable {
        
        let currentHealthLevel: Double
        let eventDescription: String
    }
}

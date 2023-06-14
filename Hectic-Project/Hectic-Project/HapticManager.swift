//
//  HapticManager.swift
//  Hectic-Project
//
//  Created by Sagar Das on 01/06/23.
//

import UIKit

final class HapticManager {
    
    static let shared = HapticManager()
    
    private init() { }
    
    public func selectionVibrate() {
        DispatchQueue.main.async {
            let selectionFeedBackGenerator = UISelectionFeedbackGenerator()
            selectionFeedBackGenerator.prepare()
            selectionFeedBackGenerator.selectionChanged()
        }
    }
    
    public func vibrate(for type: UINotificationFeedbackGenerator.FeedbackType) {
        DispatchQueue.main.async {
            let notificationGenerator = UINotificationFeedbackGenerator()
            notificationGenerator.prepare()
            notificationGenerator.notificationOccurred(.success)
        }
         
    }
}

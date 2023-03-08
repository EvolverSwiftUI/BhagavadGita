//
//  FirebaseAnalyticsManager.swift
//  BhagavadGita
//
//  Created by Sivaramaiah NAKKA on 08/03/23.
//

import Foundation
import Firebase

class FirebaseAnalyticsManager {
    
    static let shared = FirebaseAnalyticsManager()
    
    func logEvent(name: String, param: [String: Any]) {
        Analytics.logEvent(name, parameters: param)
    }
}

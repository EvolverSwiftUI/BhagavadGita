//
//  FirebaseAnalyticsManager.swift
//  BhagavadGita
//
//  Created by Sivaramaiah NAKKA on 08/03/23.
//

import Foundation
import Firebase

class FirebaseAnalyticsManager: AnalyticsEventLoggerProtocol {
    func initialize() {
        
    }
    
    func logEvent(event: EventProtocol) {
        Analytics.logEvent(event.name, parameters: event.param)
    }
    
//    static let shared = FirebaseAnalyticsManager()
//
//    func logEvent(name: String, param: [String: Any]) {
//        Analytics.logEvent(name, parameters: param)
//    }
}

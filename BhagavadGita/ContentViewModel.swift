//
//  ContentViewModel.swift
//  BhagavadGita
//
//  Created by Sivaramaiah NAKKA on 12/02/23.
//

import Foundation
//import Firebase

// 1. Singleton
// 2. DI with constructor injection
// 3. DI with dependency injection container

class ContentViewModel: ObservableObject {
    @Injected private var logger: BGLoggerType
//    private var logger: BGLoggerType = Injection.shared.container.resolve(BGLoggerType.self)!

//    init(logger: BGLoggerType = BGLogger()) {
//        self.logger = logger
//    }

    func onAppear() {
        logger.info("View is loadded.")
        logger.info(API.baseURL)
        print(ConfigurationManager.environment)
        //Analytics.logEvent("onboarding_test", parameters: [:])
        FirebaseAnalyticsManager.shared.logEvent(name: "onboarding_test", param: [:])
    }
}

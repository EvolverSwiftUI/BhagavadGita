//
//  AnalyticsManager.swift
//  BhagavadGita
//
//  Created by Sivaramaiah NAKKA on 08/03/23.
//

import Foundation

protocol EventProtocol {
    var name: String { get }
    var param: [String: Any] { get }
}


//struct Event: EventProtocol {
//    var name: String
//    var param: [String: Any] = [:]
//}

enum AnalyticsEvent {
    case clickButtonEvent
    case chapterTapped(name: String)
}

extension AnalyticsEvent: EventProtocol {
    var name: String {
        switch self {
        case .clickButtonEvent:
            return "click_button_event"
        case .chapterTapped( _ ):
            return "chapter_tapped"
        }
    }
    var param: [String : Any] {
        switch self {
        case .clickButtonEvent:
            return [:]
        case .chapterTapped(let name):
            return ["name": name]
        }
    }
}

enum OnboardingEvent {
    case clickButtonEvent
    case nextButtonTapped(name: Int)
}

extension OnboardingEvent: EventProtocol {
    var name: String {
        switch self {
        case .clickButtonEvent:
            return "click_button_event"
        case .nextButtonTapped( _ ):
            return "next_button_tapped"
        }
    }
    var param: [String : Any] {
        switch self {
        case .clickButtonEvent:
            return [:]
        case .nextButtonTapped(let index):
            return ["index": index]
        }
    }
}

enum DashboardEvents {
    case clickButtonEvent
    case nextButtonTapped(name: Int)
}

extension DashboardEvents: EventProtocol {
    var name: String {
        switch self {
        case .clickButtonEvent:
            return "click_button_event"
        case .nextButtonTapped( _ ):
            return ""
        }
    }
    var param: [String : Any] {
        switch self {
        case .clickButtonEvent:
            return [:]
        case .nextButtonTapped( _ ):
            return [:]
        }
    }
}

protocol AnalyticsEventLoggerProtocol {
    func initialize()
    func logEvent(event: EventProtocol)
}

protocol AnalyticsManagerProtocol {
    func logEvent(event: EventProtocol)
}

final class AnalyticsManager: AnalyticsManagerProtocol {
    
    private let logger: AnalyticsEventLoggerProtocol
    
    init(logger: AnalyticsEventLoggerProtocol) {
        self.logger = logger
    }
    
    func logEvent(event: EventProtocol) {
        logger.logEvent(event: event)
    }
    
    
}

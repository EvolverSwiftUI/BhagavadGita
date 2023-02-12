//
//  BGLogger.swift
//  BhagavadGita
//
//  Created by Sivaramaiah NAKKA on 12/02/23.
//

import Foundation
import SwiftyBeaver

protocol BGLoggerType {
    func verbose(_ message: String, _ file: String, _ function: String, line: Int)
    func debug(_ message: String, _ file: String, _ function: String, line: Int)
    func info(_ message: String, _ file: String, _ function: String, line: Int)
    func warning(_ message: String, _ file: String, _ function: String, line: Int)
    func error(_ message: String, _ file: String, _ function: String, line: Int)
}

extension BGLoggerType {
    func verbose(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        verbose(message, file, function, line: line)
    }

    func debug(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        debug(message, file, function, line: line)
    }

    func info(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        info(message, file, function, line: line)
    }

    func warning(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        warning(message, file, function, line: line)
    }

    func error(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        error(message, file, function, line: line)
    }

}

class BGLogger: BGLoggerType {

    private let log: SwiftyBeaver.Type = {
        let log = SwiftyBeaver.self

        // add log destinations. at least one is needed!
        let console = ConsoleDestination()  // log to Xcode Console
        log.addDestination(console)

        return log
    }()

    func verbose(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        log.verbose(message, file, function, line: line)
    }

    func debug(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        log.debug(message, file, function, line: line)
    }

    func info(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        log.info(message, file, function, line: line)
    }

    func warning(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        log.warning(message, file, function, line: line)
    }

    func error(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        log.error(message, file, function, line: line)
    }

//    log.verbose("not so important")  // prio 1, VERBOSE in silver
//    log.debug("something to debug")  // prio 2, DEBUG in green
//    log.info("a nice information")   // prio 3, INFO in blue
//    log.warning("oh no, that won’t be good")  // prio 4, WARNING in yellow
//    log.error("ouch, an error did occur!")  // prio 5, ERROR in red

}

//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Denis Calixto on 9/23/19.
//  Copyright © 2019 Langara. All rights reserved.
//

import Foundation

class Stopwatch {

    var elapsedTime: Float {
        return counter
    }
    
    var counter: Float = 0
    
    var elapsedTimeAsString: String {
        let minutes = Int(elapsedTime / 60)
        let seconds = Int(elapsedTime.truncatingRemainder(dividingBy: 60))
        let tenthsOfSeconds = Int((elapsedTime * 10).truncatingRemainder(dividingBy: 10))
        
        counter = counter + 0.1
        
        return String(format: "%02d:%02d.%d", minutes, seconds, tenthsOfSeconds)
    }
    
    var hasBeenStarted: Bool {
        return counter != 0
    }
    
    private var isRunning: Bool = false
    
    var getIsRunning: Bool {
        return isRunning;
    }
    
    func start() {
        if (!hasBeenStarted) {
            counter = 0
        }
        isRunning = true
    }
    
    func stop() {
        isRunning = false
    }
    
    func reset() {
        counter = 0
        isRunning = false
    }
    
}

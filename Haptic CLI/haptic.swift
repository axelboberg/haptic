//
//  haptics.swift
//  Haptic CLI
//
//  Created by Axel Boberg on 2020-09-09.
//

import Foundation
import AppKit

class Haptic {
    static func alignment () {
        NSHapticFeedbackManager.defaultPerformer.perform(.alignment, performanceTime: .now)
    }
    
    static func generic () {
        NSHapticFeedbackManager.defaultPerformer.perform(.generic, performanceTime: .now)
    }
    
    static func levelChange () {
        NSHapticFeedbackManager.defaultPerformer.perform(.levelChange, performanceTime: .now)
    }
}

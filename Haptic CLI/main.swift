//
//  main.swift
//  Haptic CLI
//
//  Created by Axel Boberg on 2020-09-09.
//

import Foundation
import ArgumentParser

struct Trigger: ParsableCommand {
    @Argument(help: "The type of feedback to trigger, can be any of alignment, generic or levelChange")
    var type: String
    
    mutating func run() throws {
        switch type {
        case "alignment":
            Haptic.alignment()
            break
        case "generic":
            Haptic.generic()
            break
        case "levelChange":
            Haptic.levelChange()
            break
        default:
            print("Invalid type, must be one of alignment, generic or levelChange")
        }
    }
}

Trigger.main()

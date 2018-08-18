//
//  MilesPerHour.swift
//  Converter
//
//  Created by SE on 8/16/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class MilesPerHour: Speed {
    
    static func parseMilesPerHour(_ metrePerSec:MetresPerSec) -> MilesPerHour{
        return MilesPerHour(metrePerSec.value * 2.23694)
    }
    
    static func parseMilesPerHour(_ kiloPerHr:KilometresPerHour) -> MilesPerHour{
        return MilesPerHour(kiloPerHr.value * 54.6807)
    }
    
    static func parseMilesPerHour(_ feetPerMin:FeetPerMin) -> MilesPerHour{
        return MilesPerHour(feetPerMin.value * 0.621371)
    }
    
}

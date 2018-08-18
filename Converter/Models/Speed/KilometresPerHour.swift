//
//  KilometresPerHour.swift
//  Converter
//
//  Created by IT15054128 on 8/16/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class KilometresPerHour:Speed {
    
    static func parseKilometresPerHour(_ metrePerSec:MetresPerSec) -> KilometresPerHour{
        return KilometresPerHour(metrePerSec.value * 3.6)
    }
    
    static func parseKilometresPerHour(_ feetPerMin:FeetPerMin) -> KilometresPerHour{
        return KilometresPerHour(feetPerMin.value * 0.018288)
    }
    
    static func parseKilometresPerHour(_ milesPerHr:MilesPerHour) -> KilometresPerHour{
        return KilometresPerHour(milesPerHr.value * 1.60934)
    }
    
}

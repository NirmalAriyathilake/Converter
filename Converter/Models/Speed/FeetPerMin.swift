//
//  FeetPerMin.swift
//  Converter
//
//  Created by IT15054128 on 8/16/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class FeetPerMin: Speed{
    
    static func parseFeetPerMin(_ metrePerSec:MetresPerSec) -> FeetPerMin{
        return FeetPerMin(metrePerSec.value * 196.850413793)
    }
    
    static func parseFeetPerMin(_ kiloPerHr:KilometresPerHour) -> FeetPerMin{
        return FeetPerMin(kiloPerHr.value * 54.6807)
    }
    
    static func parseFeetPerMin(_ milesPerHr:MilesPerHour) -> FeetPerMin{
        return FeetPerMin(milesPerHr.value * 88)
    }
    
}

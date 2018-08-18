//
//  MetresPerSec.swift
//  Converter
//
//  Created by SE on 8/16/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class MetresPerSec:Speed {
    
    static func parseMetresPerSec(_ feetPerMin:FeetPerMin) -> MetresPerSec{
        return MetresPerSec(feetPerMin.value * 0.00508)
    }
    
    static func parseMetresPerSec(_ kiloPerHr:KilometresPerHour) -> MetresPerSec{
        return MetresPerSec(kiloPerHr.value * 0.277778)
    }
    
    static func parseMetresPerSec(_ milesPerHr:MilesPerHour) -> MetresPerSec{
        return MetresPerSec(milesPerHr.value * 0.44704)
    }
    
}

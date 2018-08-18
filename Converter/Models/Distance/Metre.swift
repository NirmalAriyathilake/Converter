//
//  Metre.swift
//  Converter
//
//  Created by SE on 8/15/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class Metre: Distance {
    
    static func parseMetre(_ foot:Foot) -> Metre{
        return Metre(foot.value * 0.3048)
    }
    
    static func parseMetre(_ yard:Yard) -> Metre{
        return Metre(yard.value * 0.9144)
    }
    
    static func parseMetre(_ kilo:Kilometre) -> Metre{
        return Metre(kilo.value * 1000.0)
    }
    
    static func parseMetre(_ mile:Mile) -> Metre{
        return Metre(mile.value * 1609.344)
    }
    
}

//
//  Foot.swift
//  Converter
//
//  Created by SE on 8/15/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class Foot: Distance {
    
    static func parseFoot(_ metre:Metre) -> Foot{
        return Foot(metre.value * 3.28084)
    }
    
    static func parseFoot(_ yard:Yard) -> Foot{
        return Foot(yard.value * 3.0)
    }
    
    static func parseFoot(_ kilo:Kilometre) -> Foot{
        return Foot(kilo.value * 3280.84)
    }
    
    static func parseFoot(_ mile:Mile) -> Foot{
        return Foot(mile.value * 5280.0)
    }
}

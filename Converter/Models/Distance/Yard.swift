//
//  Yard.swift
//  Converter
//
//  Created by IT15054128 on 8/15/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class Yard: Distance {
    
    static func parseYard(_ metre:Metre) -> Yard{
        return Yard(metre.value * 1.09361)
    }
    
    static func parseYard(_ foot:Foot) -> Yard{
        return Yard(foot.value * 0.333333)
    }
    
    static func parseYard(_ kilo:Kilometre) -> Yard{
        return Yard(kilo.value * 1093.613298)
    }
    
    static func parseYard(_ mile:Mile) -> Yard{
        return Yard(mile.value * 1760.0)
    }
    
}

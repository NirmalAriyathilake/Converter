//
//  Mile.swift
//  Converter
//
//  Created by IT15054128 on 8/15/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class Mile: Distance {
    
    static func parseMile(_ metre:Metre) -> Mile{
        return Mile(metre.value * 0.000621371)
    }
    
    static func parseMile(_ foot:Foot) -> Mile{
        return Mile(foot.value * 0.000189393939)
    }
    
    static func parseMile(_ yard:Yard) -> Mile{
        return Mile(yard.value * 0.000568)
    }
    
    static func parseMile(_ kilo:Kilometre) -> Mile{
        return Mile(kilo.value * 0.621371)
    }
    
}

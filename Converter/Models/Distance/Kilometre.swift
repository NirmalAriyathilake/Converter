//
//  Kilometre.swift
//  Converter
//
//  Created by SE on 8/15/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class Kilometre: Distance {
    
    static func parseKilometre(_ metre:Metre) -> Kilometre{
        return Kilometre(metre.value / 1000.0)
    }
    
    static func parseKilometre(_ foot:Foot) -> Kilometre{
        return Kilometre(foot.value * 0.0003048)
    }
    
    static func parseKilometre(_ yard:Yard) -> Kilometre{
        return Kilometre(yard.value * 0.0009144)
    }
    
    static func parseKilometre(_ mile:Mile) -> Kilometre{
        return Kilometre(mile.value * 1.609344)
    }
    
}

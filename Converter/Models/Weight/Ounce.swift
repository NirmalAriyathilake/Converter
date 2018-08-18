//
//  Ounce.swift
//  Converter
//
//  Created by IT15054128 on 8/15/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class Ounce: Weight {
    
    static func parseOunce(_ gram:Gram) -> Ounce{
        return Ounce(gram.value * 0.03527396195)
    }
    
    static func parseOunce(_ kilo:Kilogram) -> Ounce{
        return Ounce(kilo.value * 35.27396195)
    }
    
    static func parseOunce(_ pound:Pound) -> Ounce{
        return Ounce(pound.value * 16.0)
    }
    
}

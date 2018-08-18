//
//  Pound.swift
//  Converter
//
//  Created by IT15054128 on 8/15/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class Pound: Weight {
    
    static func parsePound(_ gram:Gram) -> Pound{
        return Pound(gram.value * 0.0022046226218)
    }
    
    static func parsePound(_ kilo:Kilogram) -> Pound{
        return Pound(kilo.value * 2.2046226218)
    }
    
    static func parsePound(_ ounce:Ounce) -> Pound{
        return Pound(ounce.value / 16.0)
    }
    
}

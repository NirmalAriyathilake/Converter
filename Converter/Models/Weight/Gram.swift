//
//  Gram.swift
//  Converter
//
//  Created by IT15054128 on 8/15/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class Gram: Weight {
    
    static func parseGram(_ kilo:Kilogram) -> Gram{
        return Gram(kilo.value * 1000.0)
    }
    
    static func parseGram(_ pound:Pound) -> Gram {
        return Gram(pound.value / 0.0022046226218)
    }
    
    static func parseGram(_ ounce:Ounce) -> Gram {
        return Gram(ounce.value * 28.3495)
    }
}

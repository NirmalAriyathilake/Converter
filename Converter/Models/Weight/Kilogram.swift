//
//  Kilogram.swift
//  Converter
//
//  Created by IT15054128 on 8/15/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class Kilogram: Weight {
    
    static func parseKilogram(_ gram:Gram) -> Kilogram {
        return Kilogram(gram.value / 1000.0)
    }
    
    static func parseKilogram(_ pound:Pound) -> Kilogram {
        return Kilogram(pound.value / 2.2046226218)
    }
    
    static func parseKilogram(_ ounce:Ounce) -> Kilogram {
        return Kilogram(ounce.value * 0.0283495)
    }
}

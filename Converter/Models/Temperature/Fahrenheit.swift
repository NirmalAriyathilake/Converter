//
//  Fahrenheit.swift
//  Converter
//
//  Created by IT15054128 on 8/15/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class Fahrenheit: Temperature {
    
    static func parseFahrenheit(_ celsius:Celsius) -> Fahrenheit{
        return Fahrenheit((celsius.value * 9/5.0) + 32)
    }
    
    static func parseFahrenheit(_ kelvin:Kelvin) -> Fahrenheit{
        return Fahrenheit((kelvin.value * 9/5.0) - 459.67)
    }
    
}

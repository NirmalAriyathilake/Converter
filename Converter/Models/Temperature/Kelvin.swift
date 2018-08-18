//
//  Kelvin.swift
//  Converter
//
//  Created by SE on 8/15/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class Kelvin: Temperature {
    
    static func parseKelvin(_ celsius:Celsius) -> Kelvin{
        return Kelvin(celsius.value + 273.15)
    }
    
    static func parseKelvin(_ fahrenheit:Fahrenheit) -> Kelvin{
        return Kelvin((fahrenheit.value + 459.67) * 5.0/9)
    }
}

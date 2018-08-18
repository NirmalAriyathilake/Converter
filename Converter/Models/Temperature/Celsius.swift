//
//  Celsius.swift
//  Converter
//
//  Created by SE on 8/15/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import Foundation

class Celsius: Temperature {
    
    static func parseCelsius(_ fahrenheit:Fahrenheit) -> Celsius{
        return Celsius((fahrenheit.value - 32) * 5.0/9)
    }
    
    static func parseCelsius(_ kelvin:Kelvin) -> Celsius{
        return Celsius(kelvin.value - 273.15)
    }
}

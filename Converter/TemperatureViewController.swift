//
//  TemperatureViewController.swift
//  Converter
//
//  Created by IT15054128 on 8/13/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController {

    @IBOutlet weak var txtCelsius: UITextField!
    @IBOutlet weak var txtFahrenheit: UITextField!
    @IBOutlet weak var txtKelvin: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func txtCelsiusChanged(_ sender: Any) {
        if(self.txtCelsius.text != nil){
            //getting value of the text field
            let celsius:Celsius = Celsius(Double(self.txtCelsius.text!) ?? 0.0)
            
            //converting
            let fahrenheit:Double = Fahrenheit.parseFahrenheit(celsius).value
            let kelvin:Double = Kelvin.parseKelvin(celsius).value
            
            //assigning to text fields
            self.txtFahrenheit.text = String(fahrenheit)
            self.txtKelvin.text = String(kelvin)
        }
    }
    
    @IBAction func txtFahrenheitChanged(_ sender: Any) {
        if(self.txtFahrenheit.text != nil){
            //getting value of the text field
            let fahrenheit:Fahrenheit = Fahrenheit(Double(self.txtFahrenheit.text!) ?? 0.0)
            
            //converting
            let celsius:Double = Celsius.parseCelsius(fahrenheit).value
            let kelvin:Double = Kelvin.parseKelvin(fahrenheit).value
            
            //assigning to text fields
            self.txtCelsius.text = String(celsius)
            self.txtKelvin.text = String(kelvin)
        }
    }
    
    @IBAction func txtKelvinChanged(_ sender: Any) {
        if(self.txtKelvin.text != nil){
            //getting value of the text field
            let kelvin:Kelvin = Kelvin(Double(self.txtKelvin.text!) ?? 0.0)
            
            //converting
            let fahrenheit:Double = Fahrenheit.parseFahrenheit(kelvin).value
            let celsius:Double = Celsius.parseCelsius(kelvin).value
            
            //assigning to text fields
            self.txtFahrenheit.text = String(fahrenheit)
            self.txtCelsius.text = String(celsius)
        }
    }
}

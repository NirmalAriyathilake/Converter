//
//  TemperatureViewController.swift
//  Converter
//
//  Created by SE on 8/13/18.
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
            let celsius:Double = Double(self.txtCelsius.text!) ?? 0.0
            
            //converting
            let fahrenheit:Double = Double((celsius * 9/5.0) + 32)
            let kelvin:Double = Double(celsius + 273.15)
            
            //assigning to text fields
            self.txtFahrenheit.text = String(fahrenheit)
            self.txtKelvin.text = String(kelvin)
        }
    }
    
    @IBAction func txtFahrenheitChanged(_ sender: Any) {
        if(self.txtFahrenheit.text != nil){
            //getting value of the text field
            let fahrenheit:Double = Double(self.txtFahrenheit.text!) ?? 0.0
            
            //converting
            let celsius:Double = Double((fahrenheit - 32) * 5.0/9)
            let kelvin:Double = Double((fahrenheit + 459.67) * 5.0/9)
            
            //assigning to text fields
            self.txtCelsius.text = String(celsius)
            self.txtKelvin.text = String(kelvin)
        }
    }
    
    @IBAction func txtKelvinChanged(_ sender: Any) {
        if(self.txtKelvin.text != nil){
            //getting value of the text field
            let kelvin:Double = Double(self.txtKelvin.text!) ?? 0.0
            
            //converting
            let fahrenheit:Double = Double(kelvin - 273.15)
            let celsius:Double = Double((kelvin * 9/5.0) - 459.67)
            
            //assigning to text fields
            self.txtFahrenheit.text = String(fahrenheit)
            self.txtCelsius.text = String(celsius)
        }
    }
}

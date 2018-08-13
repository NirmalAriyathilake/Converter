//
//  SpeedViewController.swift
//  Converter
//
//  Created by SE on 8/13/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    @IBOutlet weak var txtMetrePerSec: UITextField!
    @IBOutlet weak var txtFeetPerMin: UITextField!
    @IBOutlet weak var txtKilometrePerHr: UITextField!
    @IBOutlet weak var txtMilesPerHr: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func txtMetrePerSecChanged(_ sender: Any) {
        if(self.txtMetrePerSec.text != nil){
            //getting value of the text field
            let metrePerSec:Double = Double(self.txtMetrePerSec.text!) ?? 0.0
            
            //converting
            let feetPerMin:Double = Double(metrePerSec * 196.85)
            let kiloPerHr:Double = Double(metrePerSec * 3.6)
            let milesPerHr:Double = Double(metrePerSec * 2.23694)
            
            //assigning to text fields
            self.txtFeetPerMin.text = String(feetPerMin)
            self.txtKilometrePerHr.text = String(kiloPerHr)
            self.txtMilesPerHr.text = String(milesPerHr)
        }
    }
    
    @IBAction func txtFeetPerMinChanged(_ sender: Any) {
        if(self.txtFeetPerMin.text != nil){
            //getting value of the text field
            let feetPerMin:Double = Double(self.txtFeetPerMin.text!) ?? 0.0
            
            //converting
            let metrePerSec:Double = Double(feetPerMin * 0.00508)
            let kiloPerHr:Double = Double(feetPerMin * 0.018288)
            let milesPerHr:Double = Double(feetPerMin * 0.0113636)
            
            //assigning to text fields
            self.txtMetrePerSec.text = String(metrePerSec)
            self.txtKilometrePerHr.text = String(kiloPerHr)
            self.txtMilesPerHr.text = String(milesPerHr)
        }
    }
    
    @IBAction func txtKiloPerHrChanged(_ sender: Any) {
        if(self.txtKilometrePerHr.text != nil){
            //getting value of the text field
            let kiloPerHr:Double = Double(self.txtKilometrePerHr.text!) ?? 0.0
            
            //converting
            let metrePerSec:Double = Double(kiloPerHr * 0.277778)
            let feetPerMin:Double = Double(kiloPerHr * 54.6807)
            let milesPerHr:Double = Double(kiloPerHr * 0.621371)
            
            //assigning to text fields
            self.txtMetrePerSec.text = String(metrePerSec)
            self.txtFeetPerMin.text = String(feetPerMin)
            self.txtMilesPerHr.text = String(milesPerHr)
        }
    }
    
    @IBAction func txtMilesPerHrChanged(_ sender: Any) {
        if(self.txtMilesPerHr.text != nil){
            //getting value of the text field
            let milesPerHr:Double = Double(self.txtMilesPerHr.text!) ?? 0.0
            
            //converting
            let metrePerSec:Double = Double(milesPerHr * 0.44704)
            let feetPerMin:Double = Double(milesPerHr * 88)
            let kiloPerHr:Double = Double(milesPerHr * 1.60934)
            
            //assigning to text fields
            self.txtMetrePerSec.text = String(metrePerSec)
            self.txtFeetPerMin.text = String(feetPerMin)
            self.txtKilometrePerHr.text = String(kiloPerHr)
        }
    }
    
}

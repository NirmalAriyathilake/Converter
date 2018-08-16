//
//  SpeedViewController.swift
//  Converter
//
//  Created by IT15054128 on 8/13/18.
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
            let metrePerSec:MetresPerSec = MetresPerSec(Double(self.txtMetrePerSec.text!) ?? 0.0)
            
            //converting
            let feetPerMin:Double = FeetPerMin.parseFeetPerMin(metrePerSec).value
            let kiloPerHr:Double = KilometresPerHour.parseKilometresPerHour(metrePerSec).value
            let milesPerHr:Double = MilesPerHour.parseMilesPerHour(metrePerSec).value
            
            //assigning to text fields
            self.txtFeetPerMin.text = String(feetPerMin)
            self.txtKilometrePerHr.text = String(kiloPerHr)
            self.txtMilesPerHr.text = String(milesPerHr)
        }
    }
    
    @IBAction func txtFeetPerMinChanged(_ sender: Any) {
        if(self.txtFeetPerMin.text != nil){
            //getting value of the text field
            let feetPerMin:FeetPerMin = FeetPerMin(Double(self.txtFeetPerMin.text!) ?? 0.0)
            
            //converting
            let metrePerSec:Double = MetresPerSec.parseMetresPerSec(feetPerMin).value
            let kiloPerHr:Double = KilometresPerHour.parseKilometresPerHour(feetPerMin).value
            let milesPerHr:Double = MilesPerHour.parseMilesPerHour(feetPerMin).value
            
            //assigning to text fields
            self.txtMetrePerSec.text = String(metrePerSec)
            self.txtKilometrePerHr.text = String(kiloPerHr)
            self.txtMilesPerHr.text = String(milesPerHr)
        }
    }
    
    @IBAction func txtKiloPerHrChanged(_ sender: Any) {
        if(self.txtKilometrePerHr.text != nil){
            //getting value of the text field
            let kiloPerHr:KilometresPerHour = KilometresPerHour(Double(self.txtKilometrePerHr.text!) ?? 0.0)
            
            //converting
            let metrePerSec:Double = MetresPerSec.parseMetresPerSec(kiloPerHr).value
            let feetPerMin:Double = FeetPerMin.parseFeetPerMin(kiloPerHr).value
            let milesPerHr:Double = MilesPerHour.parseMilesPerHour(kiloPerHr).value
            
            //assigning to text fields
            self.txtMetrePerSec.text = String(metrePerSec)
            self.txtFeetPerMin.text = String(feetPerMin)
            self.txtMilesPerHr.text = String(milesPerHr)
        }
    }
    
    @IBAction func txtMilesPerHrChanged(_ sender: Any) {
        if(self.txtMilesPerHr.text != nil){
            //getting value of the text field
            let milesPerHr:MilesPerHour = MilesPerHour(Double(self.txtMilesPerHr.text!) ?? 0.0)
            
            //converting
            let metrePerSec:Double = MetresPerSec.parseMetresPerSec(milesPerHr).value
            let feetPerMin:Double = FeetPerMin.parseFeetPerMin(milesPerHr).value
            let kiloPerHr:Double = KilometresPerHour.parseKilometresPerHour(milesPerHr).value
            
            //assigning to text fields
            self.txtMetrePerSec.text = String(metrePerSec)
            self.txtFeetPerMin.text = String(feetPerMin)
            self.txtKilometrePerHr.text = String(kiloPerHr)
        }
    }
    
    //hide keyboard
    func dismissKeyboard(){
        view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismissKeyboard();
    }
    
}

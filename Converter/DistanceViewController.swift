//
//  DistanceViewController.swift
//  Converter
//
//  Created by SE on 8/13/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {

    @IBOutlet weak var txtMetre: UITextField!
    @IBOutlet weak var txtFoot: UITextField!
    @IBOutlet weak var txtYard: UITextField!
    @IBOutlet weak var txtKilometre: UITextField!
    @IBOutlet weak var txtMile: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func txtMetreChanged(_ sender: Any) {
        if(self.txtMetre.text != nil){
            //getting value of the text field
            let metre:Double = Double(self.txtMetre.text!) ?? 0.0
            
            //converting
            let foot:Double = Double(metre * 3.28084)
            let yard:Double = Double(metre * 1.09361)
            let kilo:Double = Double(metre / 1000.0)
            let mile:Double = Double(metre * 0.000621371)
            
            //assigning to text fields
            self.txtFoot.text = String(foot)
            self.txtYard.text = String(yard)
            self.txtKilometre.text = String(kilo)
            self.txtMile.text = String(mile)
        }
    }
    
    @IBAction func txtFootChanged(_ sender: Any) {
        if(self.txtFoot.text != nil){
            //getting value of the text field
            let foot:Double = Double(self.txtFoot.text!) ?? 0.0
            
            //converting
            let metre:Double = Double(foot * 0.3048 )
            let yard:Double = Double(foot * 0.333333)
            let kilo:Double = Double(foot * 0.0003048)
            let mile:Double = Double(foot * 0.000189393939)
            
            //assigning to text fields
            self.txtMetre.text = String(metre)
            self.txtYard.text = String(yard)
            self.txtKilometre.text = String(kilo)
            self.txtMile.text = String(mile)
        }
    }
    
    @IBAction func txtYardChanged(_ sender: Any) {
        if(self.txtYard.text != nil){
            //getting value of the text field
            let yard:Double = Double(self.txtYard.text!) ?? 0.0
            
            //converting
            let metre:Double = Double(yard * 0.9144 )
            let foot:Double = Double(yard * 3.0)
            let kilo:Double = Double(yard * 0.0009144)
            let mile:Double = Double(yard * 0.000568)
            
            //assigning to text fields
            self.txtMetre.text = String(metre)
            self.txtFoot.text = String(foot)
            self.txtKilometre.text = String(kilo)
            self.txtMile.text = String(mile)
        }
    }
    
    @IBAction func txtKilometresChanged(_ sender: Any) {
        if(self.txtKilometre.text != nil){
            //getting value of the text field
            let kilo:Double = Double(self.txtKilometre.text!) ?? 0.0
            
            //converting
            let metre:Double = Double(kilo * 1000.0 )
            let foot:Double = Double(kilo * 3280.84)
            let yard:Double = Double(kilo * 1093.613298)
            let mile:Double = Double(kilo * 0.621371)
            
            //assigning to text fields
            self.txtMetre.text = String(metre)
            self.txtFoot.text = String(foot)
            self.txtYard.text = String(yard)
            self.txtMile.text = String(mile)
        }
    }
    
    @IBAction func txtMileChanged(_ sender: Any) {
        if(self.txtMile.text != nil){
            //getting value of the text field
            let mile:Double = Double(self.txtMile.text!) ?? 0.0
            
            //converting
            let metre:Double = Double(mile * 1609.344 )
            let foot:Double = Double(mile * 5280.0)
            let yard:Double = Double(mile * 1760.0)
            let kilo:Double = Double(mile * 1.609344)
            
            //assigning to text fields
            self.txtMetre.text = String(metre)
            self.txtFoot.text = String(foot)
            self.txtYard.text = String(yard)
            self.txtKilometre.text = String(kilo)
        }
    }
    
}

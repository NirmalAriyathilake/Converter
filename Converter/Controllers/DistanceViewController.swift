//
//  DistanceViewController.swift
//  Converter
//
//  Created by IT15054128 on 8/13/18.
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
            let metre:Metre = Metre(Double(self.txtMetre.text!) ?? 0.0)
            
            //converting
            let foot:Double = Foot.parseFoot(metre).value
            let yard:Double = Yard.parseYard(metre).value
            let kilo:Double = Kilometre.parseKilometre(metre).value
            let mile:Double = Mile.parseMile(metre).value
            
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
            let foot:Foot = Foot(Double(self.txtFoot.text!) ?? 0.0)
            
            //converting
            let metre:Double = Metre.parseMetre(foot).value
            let yard:Double = Yard.parseYard(foot).value
            let kilo:Double = Kilometre.parseKilometre(foot).value
            let mile:Double = Mile.parseMile(foot).value
            
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
            let yard:Yard = Yard(Double(self.txtYard.text!) ?? 0.0)
            
            //converting
            let metre:Double = Metre.parseMetre(yard).value
            let foot:Double = Foot.parseFoot(yard).value
            let kilo:Double = Kilometre.parseKilometre(yard).value
            let mile:Double = Mile.parseMile(yard).value
            
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
            let kilo:Kilometre = Kilometre(Double(self.txtKilometre.text!) ?? 0.0)
            
            //converting
            let metre:Double = Metre.parseMetre(kilo).value
            let foot:Double = Foot.parseFoot(kilo).value
            let yard:Double = Yard.parseYard(kilo).value
            let mile:Double = Mile.parseMile(kilo).value
            
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
            let mile:Mile = Mile(Double(self.txtMile.text!) ?? 0.0)
            
            //converting
            let metre:Double = Metre.parseMetre(mile).value
            let foot:Double = Foot.parseFoot(mile).value
            let yard:Double = Yard.parseYard(mile).value
            let kilo:Double = Kilometre.parseKilometre(mile).value
            
            //assigning to text fields
            self.txtMetre.text = String(metre)
            self.txtFoot.text = String(foot)
            self.txtYard.text = String(yard)
            self.txtKilometre.text = String(kilo)
        }
    }
    
    //hide keyboard
    func dismissKeyboard(){
        view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismissKeyboard();
    }
    
    //clear all
    func clearAll(){
        self.txtMetre.text = ""
        self.txtFoot.text = ""
        self.txtYard.text = ""
        self.txtKilometre.text = ""
        self.txtMile.text = ""
    }
    
    @IBAction func txtMetreBegin(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func txtFootBegin(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func txtYardBegin(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func txtKilometreBegin(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func txtMileBegin(_ sender: Any) {
        clearAll()
    }
    
    
    
}

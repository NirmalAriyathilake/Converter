//
//  WeightViewController.swift
//  Converter
//
//  Created by SE on 8/13/18.
//  Copyright © 2018 IT15054128. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    @IBOutlet weak var txtGram: UITextField!
    @IBOutlet weak var txtKiloGram: UITextField!
    @IBOutlet weak var txtPound: UITextField!
    @IBOutlet weak var txtOunce: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func txtGramChanged(_ sender: Any) {
        if(self.txtGram.text != nil){
            //getting value of the text field
            let gram:Double = Double(self.txtGram.text!) ?? 0.0
            
            //converting
            let kilo:Double = Double(gram / 1000.0)
            let pound:Double = Double(gram * 0.0022046226218)
            let ounce:Double = Double(gram * 0.03527396195)
            
            //assigning to text fields
            self.txtKiloGram.text = String(kilo)
            self.txtPound.text = String(pound)
            self.txtOunce.text = String(ounce)
        }
    }
    
    @IBAction func txtKilogramChanged(_ sender: Any) {
        if(self.txtKiloGram.text != nil){
            //getting value of the text field
            let kilogram:Double = Double(self.txtKiloGram.text!) ?? 0.0
            
            //converting
            let gram:Double = Double(kilogram * 1000.0)
            let pound:Double = Double(kilogram * 2.2046226218)
            let ounce:Double = Double(kilogram * 35.27396195)
            
            //assigning to text fields
            self.txtGram.text = String(gram)
            self.txtPound.text = String(pound)
            self.txtOunce.text = String(ounce)
        }
    }
    
    @IBAction func txtPoundChanged(_ sender: Any) {
        if(self.txtPound.text != nil){
            //getting value of the text field
            let pound:Double = Double(self.txtPound.text!) ?? 0.0
            
            //converting
            let gram:Double = Double(pound / 0.0022046226218)
            let kilo:Double = Double(pound / 2.2046226218)
            let ounce:Double = Double(pound * 16.0)
            
            //assigning to text fields
            self.txtGram.text = String(gram)
            self.txtKiloGram.text = String(kilo)
            self.txtOunce.text = String(ounce)
        }
    }
    
    @IBAction func txtOunceChanged(_ sender: Any) {
        if(self.txtOunce.text != nil){
            //getting value of the text field
            let ounce:Double = Double(self.txtOunce.text!) ?? 0.0
            
            //converting
            let gram:Double = Double(ounce * 28.3495)
            let kilo:Double = Double(ounce * 0.0283495)
            let pound:Double = Double(ounce / 16.0)
            
            //assigning to text fields
            self.txtGram.text = String(gram)
            self.txtKiloGram.text = String(kilo)
            self.txtPound.text = String(pound)
        }
    }
    
    //hide keyboard
    func dismissKeyboard(){
        view.endEditing(true)
    }
    
    @IBAction func txtGramDone(_ sender: Any) {
        dismissKeyboard()
    }
    
    
}

//
//  WeightViewController.swift
//  Converter
//
//  Created by IT15054128 on 8/13/18.
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
            let gram:Gram = Gram(Double(self.txtGram.text!) ?? 0.0)
            
            //converting
            let kilo:Double = Kilogram.parseKilogram(gram).value
            let pound:Double = Pound.parsePound(gram).value
            let ounce:Double = Ounce.parseOunce(gram).value
            
            //assigning to text fields
            self.txtKiloGram.text = String(kilo)
            self.txtPound.text = String(pound)
            self.txtOunce.text = String(ounce)
        }
    }
    
    @IBAction func txtKilogramChanged(_ sender: Any) {
        if(self.txtKiloGram.text != nil){
            //getting value of the text field
            let kilogram:Kilogram = Kilogram(Double(self.txtKiloGram.text!) ?? 0.0)
            
            //converting
            let gram:Double = Gram.parseGram(kilogram).value
            let pound:Double = Pound.parsePound(kilogram).value
            let ounce:Double = Ounce.parseOunce(kilogram).value
            
            //assigning to text fields
            self.txtGram.text = String(gram)
            self.txtPound.text = String(pound)
            self.txtOunce.text = String(ounce)
        }
    }
    
    @IBAction func txtPoundChanged(_ sender: Any) {
        if(self.txtPound.text != nil){
            //getting value of the text field
            let pound:Pound = Pound(Double(self.txtPound.text!) ?? 0.0)
            
            //converting
            let gram:Double = Gram.parseGram(pound).value
            let kilo:Double = Kilogram.parseKilogram(pound).value
            let ounce:Double = Ounce.parseOunce(pound).value
            
            //assigning to text fields
            self.txtGram.text = String(gram)
            self.txtKiloGram.text = String(kilo)
            self.txtOunce.text = String(ounce)
        }
    }
    
    @IBAction func txtOunceChanged(_ sender: Any) {
        if(self.txtOunce.text != nil){
            //getting value of the text field
            let ounce:Ounce = Ounce(Double(self.txtOunce.text!) ?? 0.0)
            
            //converting
            let gram:Double = Gram.parseGram(ounce).value
            let kilo:Double = Kilogram.parseKilogram(ounce).value
            let pound:Double = Pound.parsePound(ounce).value
            
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
    
    
    //
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismissKeyboard();
    }
    
    
}

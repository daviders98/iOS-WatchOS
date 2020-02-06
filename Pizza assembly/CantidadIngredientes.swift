//
//  CantidadIngredientes.swift
//  Pizza assembly
//
//  Created by David Garcia hernandez on 02/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import UIKit

class CantidadIngredientes: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var CantidadIng: UITextField!
    var cantidad : Int = 0
    var arre : [String] = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CantidadIng.delegate = self
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        Boton.isUserInteractionEnabled = false
    }
    @IBAction func textFieldDoneEditing(sender: UITextField){
        sender.resignFirstResponder() //Desaparecer el teclado
    }
    @IBOutlet weak var Boton: UIButton!
    @IBAction func Continuarboton(_ sender: Any) {
        self.cantidad = Int(CantidadIng.text!)!
    }
    @IBAction func textFieldDidEndEditing(_ textField: UITextField) {
        if Int(CantidadIng.text!) != nil{
            if Int(CantidadIng.text!)! > 0 && Int(CantidadIng.text!)! < 6{
                Boton.isUserInteractionEnabled = true
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! Ingredientes
        vc.cantidadi = self.cantidad
        vc.aray = self.arre
    }
    @IBAction func backgroundTap(sender: UIControl){
        CantidadIng.resignFirstResponder()
    }
}

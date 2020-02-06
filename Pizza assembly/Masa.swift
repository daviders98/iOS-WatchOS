//
//  Masa.swift
//  Pizza assembly
//
//  Created by David Garcia hernandez on 01/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import UIKit

class VistaEtapa1: UIViewController {
    var masa : String = ""
    var arreglo : [String] = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func MasaDelgada(_ sender: UIButton) {
        masa = "Delgada"
    }
    
    @IBAction func MasaCrujiente(_ sender: UIButton) {
        masa = "Crujiente"
    }
    
    @IBAction func MasaGruesa(_ sender: UIButton) {
        masa = "Gruesa"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        arreglo.append(masa)
        let vc = segue.destination as! Queso
        vc.array = arreglo
    }
}

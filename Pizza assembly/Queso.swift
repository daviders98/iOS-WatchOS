//
//  Queso.swift
//  Pizza assembly
//
//  Created by David Garcia hernandez on 01/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import UIKit

class Queso: UIViewController {
    var Queso : String = ""
    var array : [String] = [""]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func QMozzarella(_ sender: UIButton) {
        Queso = "Mozzarella"
    }
    
    @IBAction func QCheddar(_ sender: Any) {
        Queso = "Cheddar"
    }
    
    @IBAction func QParmesano(_ sender: Any) {
        Queso = "Parmesano"
    }
    
    @IBAction func QSinQueso(_ sender: Any) {
        Queso = "Sin queso"
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
        array.append(Queso)
        let vc = segue.destination as! CantidadIngredientes
        vc.arre = self.array
    }
}

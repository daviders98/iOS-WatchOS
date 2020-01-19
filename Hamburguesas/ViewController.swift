//
//  ViewController.swift
//  Hamburguesas
//
//  Created by David Garcia hernandez on 18/01/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let paises = ColeccionDePaises()
    let hambur = ColeccionDeHamburguesa()
    let colors = coloresfondo()
    
    struct coloresfondo{
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    func regresaColorRandom() -> UIColor{
        return colores[Int(arc4random())%colores.count]
    }
    }
    
    @IBOutlet weak var PaisTexto: UILabel!
    @IBOutlet weak var Hamburguesa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //Interface builder action, ejecuta alguna acción al picar el botón
    @IBAction func dameUnaHamburguesa() {
        PaisTexto.text = paises.obtenPais()
        Hamburguesa.text = hambur.obtenHamburguesa()
        let colorfondo = colors.regresaColorRandom()
        view.backgroundColor = colorfondo
        view.tintColor = colorfondo
    }
}

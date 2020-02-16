//
//  ViewController.swift
//  Pizza assembly
//
//  Created by David Garcia hernandez on 22/01/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var tamaño : String = ""
    @IBAction func TamañoChica(_ sender: UIButton) {
        tamaño = "Chica"
    }
    @IBAction func TamañoMediana(_ sender: UIButton) {
        tamaño = "Mediana"
    }
    @IBAction func TamañoGrande(_ sender: UIButton) {
        tamaño = "Grande"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistamasa = segue.destination as! VistaEtapa1
        vistamasa.arreglo = [tamaño]
    }
}

/*
La app no podrá confirmar una orden de pizza si el usuario no realizó alguna selección en las etapas de configuración de la pizza.
El proyecto deberá estar en GitHub
*/

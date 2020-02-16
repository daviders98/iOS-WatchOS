//
//  VistaTamano.swift
//  Pizza watch WatchKit Extension
//
//  Created by David Garcia hernandez on 08/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import WatchKit
import Foundation


class VistaTamano: WKInterfaceController {
    @IBOutlet weak var LetreroTam: WKInterfaceLabel!
    var Tamaño : String = "Chica"
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func CambiarTamaño(_ value: Float) {
        switch value {
        case 0:
            Tamaño = "Chica"
        case 1:
            Tamaño = "Mediana"
        case 2:
            Tamaño = "Grande"
        default:
            break
        }
        LetreroTam.setText(Tamaño)
    }
    @IBAction func Continuar1() {
        let Tam = ValorTaman_o(v: Tamaño)
        pushController(withName: "IdentificadorTamaño", context: Tam)
    }
}

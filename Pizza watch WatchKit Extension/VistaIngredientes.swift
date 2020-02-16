//
//  VistaIngredientes.swift
//  Pizza watch WatchKit Extension
//
//  Created by David Garcia hernandez on 09/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import WatchKit
import Foundation


class VistaIngredientes: WKInterfaceController {
    var arreglo : [String] = [""]
    var numIng : Int = 1

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let cont = context as! ValorQueso
        // Configure interface objects here.
        arreglo = [cont.tamaño,cont.masa,cont.queso]
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func CambiarIngredientes(_ value: Float) {
        switch value {
        case 1:
            numIng = 1
        case 2:
            numIng = 2
        case 3:
            numIng = 3
        case 4:
            numIng = 4
        case 5:
            numIng = 5
        default:
            break
        }
    numIngredientes.setText(String(numIng))
    }
    @IBOutlet weak var numIngredientes: WKInterfaceLabel!
    
    @IBAction func Continuar4() {
        let num = ValorNumIngredientes(m: arreglo[1], t: arreglo[0], q: arreglo[2], n: numIng)
        pushController(withName: "IdentificadorElegirIngredientes", context: num)
    }
}

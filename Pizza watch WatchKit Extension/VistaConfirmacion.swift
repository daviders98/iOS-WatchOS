//
//  VistaConfirmacion.swift
//  Pizza watch WatchKit Extension
//
//  Created by David Garcia hernandez on 09/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import WatchKit
import Foundation


class VistaConfirmacion: WKInterfaceController {
    @IBOutlet weak var Orden: WKInterfaceLabel!
    var arregloIngredientes : [String] = [""]
    var temp : String = ""
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let u = context as! ValorElegirIngredientes
        // Configure interface objects here.
        arregloIngredientes = u.array
        for index in arregloIngredientes{
            temp += index + "\n"
        }
        Orden.setText("\(u.tamaño)\n\(u.masa)\n\(u.queso)\n\(temp)")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

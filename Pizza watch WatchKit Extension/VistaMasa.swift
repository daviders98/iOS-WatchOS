//
//  VistaMasa.swift
//  Pizza watch WatchKit Extension
//
//  Created by David Garcia hernandez on 08/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import WatchKit
import Foundation


class VistaMasa: WKInterfaceController {
    @IBOutlet weak var Masa: WKInterfaceLabel!
    var TipoMasa : String = "Delgada"
    var size : String = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let conxz = context as! ValorTaman_o
        size = conxz.valortamaño
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
    
    @IBAction func CambiarMasa(_ value: Float) {
        switch value {
        case 0:
            TipoMasa = "Delgada"
        case 1:
            TipoMasa = "Crujiente"
        case 2:
            TipoMasa = "Gruesa"
        default:
            break
        }
        Masa.setText(TipoMasa)
    }
    @IBAction func Continuar2() {
        let mass = ValorMasa(m: TipoMasa, t: size)
        pushController(withName: "IdentificadorMasa", context: mass)
    }
    
}

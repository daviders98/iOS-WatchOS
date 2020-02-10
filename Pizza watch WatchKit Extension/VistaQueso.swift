//
//  VistaQueso.swift
//  Pizza watch WatchKit Extension
//
//  Created by David Garcia hernandez on 08/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import WatchKit
import Foundation


class VistaQueso: WKInterfaceController {
    @IBOutlet weak var Picker: WKInterfacePicker!
    var array : [String] = [""]
    var queso : String = "Sin Queso"
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let item1 = WKPickerItem()
        item1.title = "Sin Queso"
        let item2 = WKPickerItem()
        item2.title = "Cheddar"
        let item3 = WKPickerItem()
        item3.title = "Parmesano"
        let item4 = WKPickerItem()
        item4.title = "Mozzarella"
        // Configure interface objects here.
        let items = [item1,item2,item3,item4]
        Picker.setItems(items)
        let contx = context as! ValorMasa
        array[0] = contx.tamaño
        array.append(contx.masa)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func ElegirQueso(_ value: Int) {
        switch value {
        case 0:
            queso = "Sin Queso"
        case 1:
            queso = "Cheddar"
        case 2:
            queso = "Parmesano"
        case 3:
            queso = "Mozzarella"
        default:
            break
        }
    }
    
    @IBAction func Continuar3() {
        let cheese = ValorQueso(m: array[1], t: array[0], q: queso)
        pushController(withName: "IdentificadorIngredientes", context: cheese)
    }
}

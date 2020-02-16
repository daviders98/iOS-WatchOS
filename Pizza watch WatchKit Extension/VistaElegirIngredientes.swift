//
//  VistaElegirIngredientes.swift
//  Pizza watch WatchKit Extension
//
//  Created by David Garcia hernandez on 09/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import WatchKit
import Foundation


class VistaElegirIngredientes: WKInterfaceController {
    
    var orden : [String] = [""]
    var arregloIngredientes : [String] = [""]
    var ingSeleccionados : Int = 0
    var elegidos : [Bool] = [false,false,false,false,false,false,false,false,false]
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let con = context as! ValorNumIngredientes
        orden = [con.tamaño,con.masa,con.queso,String(con.numIng)]
        // Configure interface objects here.
        arregloSwitches = [JamónSwitch,PepperoniSwitch,PavoSwitch,SalchichaSwitch,AceitunaSwitch,CebollaSwitch,PimientoSwitch,PiñaSwitch,AnchoaSwitch]
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func ElegirJamón(_ value: Bool) {
            if ingSeleccionados >= 0 && ingSeleccionados <= 4{
                if value{
                    if arregloIngredientes.contains("Jamón"){
                        
                    }else{
                        arregloIngredientes.append("Jamón")
                        ingSeleccionados+=1
                        StatChange(ind: 0)
                    }
                }
                else{
                    if arregloIngredientes.contains("Jamón"){
                        arregloIngredientes.remove(at: arregloIngredientes.lastIndex(of: "Jamón")!)
                        ingSeleccionados = ingSeleccionados - 1
                        StatChange(ind: 0)
                        CambiarSwitches(ingrediente: "Jamón", estado: true)
                    }
                }
            }
        if ingSeleccionados == Int(orden[3])!{
            CambiarSwitches(ingrediente: "Jamón", estado: false)
            BotonContinuar.setEnabled(true)
        }else{
            BotonContinuar.setEnabled(false)
        }
    }
    @IBOutlet weak var JamónSwitch: WKInterfaceSwitch!
    @IBOutlet weak var PepperoniSwitch: WKInterfaceSwitch!
    @IBOutlet weak var PavoSwitch: WKInterfaceSwitch!
    @IBOutlet weak var SalchichaSwitch: WKInterfaceSwitch!
    @IBOutlet weak var AceitunaSwitch: WKInterfaceSwitch!
    @IBOutlet weak var CebollaSwitch: WKInterfaceSwitch!
    @IBOutlet weak var PimientoSwitch: WKInterfaceSwitch!
    @IBOutlet weak var PiñaSwitch: WKInterfaceSwitch!
    @IBOutlet weak var AnchoaSwitch: WKInterfaceSwitch!
    
    var arregloSwitches : [WKInterfaceSwitch] = []
    @IBAction func ElegirPepperoni(_ value: Bool) {
            if ingSeleccionados >= 0 && ingSeleccionados <= 4{
                if value{
                    if arregloIngredientes.contains("Pepperoni"){
                        
                    }else{
                        arregloIngredientes.append("Pepperoni")
                        StatChange(ind: 1)
                        ingSeleccionados+=1
                    }
                }
                else{
                    if arregloIngredientes.contains("Pepperoni"){
                        arregloIngredientes.remove(at: arregloIngredientes.lastIndex(of: "Pepperoni")!)
                        ingSeleccionados = ingSeleccionados - 1
                        StatChange(ind: 1)
                        CambiarSwitches(ingrediente: "Pepperoni", estado: true)
                    }
                }
            }
        if ingSeleccionados == Int(orden[3])!{
            CambiarSwitches(ingrediente: "Pepperoni", estado: false)
            BotonContinuar.setEnabled(true)
        }
        else{
            BotonContinuar.setEnabled(false)
        }
    }
    @IBAction func ElegirPavo(_ value: Bool) {
        if ingSeleccionados >= 0 && ingSeleccionados <= 4{
                if value{
                    if arregloIngredientes.contains("Pavo"){
                        
                    }else{
                        arregloIngredientes.append("Pavo")
                        ingSeleccionados+=1
                        StatChange(ind: 2)
                    }
                }
                else{
                    if arregloIngredientes.contains("Pavo"){
                        arregloIngredientes.remove(at: arregloIngredientes.lastIndex(of: "Pavo")!)
                        ingSeleccionados = ingSeleccionados - 1
                        StatChange(ind: 2)
                        CambiarSwitches(ingrediente: "Pavo", estado: true)
                    }
                }
            }
        if ingSeleccionados == Int(orden[3])!{
            CambiarSwitches(ingrediente: "Pavo", estado: false)
            BotonContinuar.setEnabled(true)
        }
        else{
            BotonContinuar.setEnabled(false)
        }
    }
    @IBAction func ElegirSalchicha(_ value: Bool) {
        if ingSeleccionados >= 0 && ingSeleccionados <= 4{
                if value{
                    if arregloIngredientes.contains("Salchicha"){
                        
                    }else{
                        arregloIngredientes.append("Salchicha")
                        ingSeleccionados+=1
                        StatChange(ind: 3)
                    }
                }
                else{
                    if arregloIngredientes.contains("Salchicha"){
                        arregloIngredientes.remove(at: arregloIngredientes.lastIndex(of: "Salchicha")!)
                        ingSeleccionados = ingSeleccionados - 1
                        StatChange(ind: 3)
                        CambiarSwitches(ingrediente: "Salchicha", estado: true)
                    }
                }
            }
        if ingSeleccionados == Int(orden[3])!{
            CambiarSwitches(ingrediente: "Salchicha", estado: false)
            BotonContinuar.setEnabled(true)
        }
        else{
            BotonContinuar.setEnabled(false)
        }
    }
    @IBAction func ElegirAceituna(_ value: Bool) {
        if ingSeleccionados >= 0 && ingSeleccionados <= 4{
                if value{
                    if arregloIngredientes.contains("Aceituna"){
                        
                    }else{
                        arregloIngredientes.append("Aceituna")
                        ingSeleccionados+=1
                        StatChange(ind: 4)
                    }
                }
                else{
                    if arregloIngredientes.contains("Aceituna"){
                        arregloIngredientes.remove(at: arregloIngredientes.lastIndex(of: "Aceituna")!)
                        ingSeleccionados = ingSeleccionados - 1
                        StatChange(ind: 4)
                        CambiarSwitches(ingrediente: "Aceituna", estado: true)
                    }
                }
            }
        if ingSeleccionados == Int(orden[3])!{
            CambiarSwitches(ingrediente: "Aceituna", estado: false)
            BotonContinuar.setEnabled(true)
        }
        else{
            BotonContinuar.setEnabled(false)
        }
    }
    @IBAction func ElegirCebolla(_ value: Bool) {
        if ingSeleccionados >= 0 && ingSeleccionados <= 4{
                if value{
                    if arregloIngredientes.contains("Cebolla"){
                        
                    }else{
                        arregloIngredientes.append("Cebolla")
                        ingSeleccionados+=1
                        StatChange(ind: 5)
                    }
                }
                else{
                    if arregloIngredientes.contains("Cebolla"){
                        arregloIngredientes.remove(at: arregloIngredientes.lastIndex(of: "Cebolla")!)
                        ingSeleccionados = ingSeleccionados - 1
                        StatChange(ind: 5)
                        CambiarSwitches(ingrediente: "Cebolla", estado: true)
                    }
                }
            }
        if ingSeleccionados == Int(orden[3])!{
            CambiarSwitches(ingrediente: "Cebolla", estado: false)
            BotonContinuar.setEnabled(true)
        }
        else{
            BotonContinuar.setEnabled(false)
        }
    }
    @IBAction func ElegirPimiento(_ value: Bool) {
        if ingSeleccionados >= 0 && ingSeleccionados <= 4{
                if value{
                    if arregloIngredientes.contains("Pimiento"){
                        
                    }else{
                        arregloIngredientes.append("Pimiento")
                        ingSeleccionados+=1
                        StatChange(ind: 6)
                    }
                }
                else{
                    if arregloIngredientes.contains("Pimiento"){
                        arregloIngredientes.remove(at: arregloIngredientes.lastIndex(of: "Pimiento")!)
                        ingSeleccionados = ingSeleccionados - 1
                        StatChange(ind: 6)
                        CambiarSwitches(ingrediente: "Pimiento", estado: true)
                    }
                }
            }
        if ingSeleccionados == Int(orden[3])!{
            CambiarSwitches(ingrediente: "Pimiento", estado: false)
            BotonContinuar.setEnabled(true)
        }
        else{
            BotonContinuar.setEnabled(false)
        }
    }
    @IBAction func ElegirPiña(_ value: Bool) {
        if ingSeleccionados >= 0 && ingSeleccionados <= 4{
                if value{
                    if arregloIngredientes.contains("Piña"){
                        
                    }else{
                        arregloIngredientes.append("Piña")
                        ingSeleccionados+=1
                        StatChange(ind: 7)
                    }
                }
                else{
                    if arregloIngredientes.contains("Piña"){
                        arregloIngredientes.remove(at: arregloIngredientes.lastIndex(of: "Piña")!)
                        ingSeleccionados = ingSeleccionados - 1
                        StatChange(ind: 7)
                        CambiarSwitches(ingrediente: "Piña", estado: true)
                    }
                }
            }
        if ingSeleccionados == Int(orden[3])!{
            CambiarSwitches(ingrediente: "Piña", estado: false)
            BotonContinuar.setEnabled(true)
        }
        else{
            BotonContinuar.setEnabled(false)
        }
    }
    @IBAction func ElegirAnchoa(_ value: Bool) {
        if ingSeleccionados >= 0 && ingSeleccionados <= 4{
                if value{
                    if arregloIngredientes.contains("Anchoa"){
                        
                    }else{
                        arregloIngredientes.append("Anchoa")
                        ingSeleccionados+=1
                        StatChange(ind: 8)
                    }
                }
                else{
                    if arregloIngredientes.contains("Anchoa"){
                        arregloIngredientes.remove(at: arregloIngredientes.lastIndex(of: "Anchoa")!)
                        ingSeleccionados = ingSeleccionados - 1
                        StatChange(ind: 8)
                        CambiarSwitches(ingrediente: "Anchoa", estado: true)
                    }
                }
            }
        if ingSeleccionados == Int(orden[3])!{
            CambiarSwitches(ingrediente: "Anchoa", estado: false)
            BotonContinuar.setEnabled(true)
        }
        else{
            BotonContinuar.setEnabled(false)
        }
    }
    func StatChange(ind: Int){
        elegidos[ind] = !elegidos[ind]
    }
    
    func CambiarSwitches(ingrediente : String, estado : Bool){
        var indice : Int = 0
        switch ingrediente {
        case "Jamón":
            indice = 0
        case "Pepperoni":
            indice = 1
        case "Pavo":
            indice = 2
        case "Salchicha":
            indice = 3
        case "Aceituna":
            indice = 4
        case "Cebolla":
            indice = 5
        case "Pimiento":
            indice = 6
        case "Piña":
            indice = 7
        case "Anchoa":
            indice = 8
        default:
            break
        }
        var cont = 0
        for index in arregloSwitches{
            if(cont == indice || elegidos[cont]){
            }else{
                index.setEnabled(estado)
            }
            cont+=1
        }
    }
    @IBAction func continuar5() {
        arregloIngredientes.remove(at: 0)
        let resumen = ValorElegirIngredientes(m: orden[1], t: orden[0], q: orden[2], a: arregloIngredientes)
        pushController(withName: "IdentificadorConfirmación", context: resumen)
    }
    @IBOutlet weak var BotonContinuar: WKInterfaceButton!
    
}


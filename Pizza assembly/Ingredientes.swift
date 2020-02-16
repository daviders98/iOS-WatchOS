//
//  Ingredientes.swift
//  Pizza assembly
//
//  Created by David Garcia hernandez on 02/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController {
    @IBOutlet weak var mensaje: UILabel!
    @IBOutlet weak var numeroleft: UILabel!
    var cantidadi : Int = 0
    var ing : [String] = []
    var contador : Int = 0
    var aray : [String] = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        numeroleft.text = String(cantidadi)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Jamon(_ sender: Any) {
        if ing.contains("Jamón"){
            ing.remove(at: ing.firstIndex(of: "Jamón") ?? 0)
            self.contador-=1
        }else{
            if ing.count != cantidadi{
                ing.append("Jamón")
                añadir()
            }
        }
        Desplegar()
    }
    
    @IBAction func Pepperoni(_ sender: Any) {
        if ing.contains("Pepperoni"){
            ing.remove(at: ing.firstIndex(of: "Pepperoni") ?? 0)
            self.contador-=1
        }else{
            if ing.count != cantidadi{
                ing.append("Pepperoni")
                añadir()
            }
        }
        Desplegar()
    }
    
    @IBAction func Pavo(_ sender: Any) {
        if ing.contains("Pavo"){
            ing.remove(at: ing.firstIndex(of: "Pavo") ?? 0)
            self.contador-=1
        }else{
            if ing.count != cantidadi{
                ing.append("Pavo")
                añadir()
            }
        }
        Desplegar()
    }
    
    @IBAction func Salchicha(_ sender: Any) {
        if ing.contains("Salchicha"){
            ing.remove(at: ing.firstIndex(of: "Salchicha") ?? 0)
            self.contador-=1
        }else{
            if ing.count != cantidadi{
                ing.append("Salchicha")
                añadir()
            }
        }
        Desplegar()
    }
    
    @IBAction func Aceituna(_ sender: Any) {
        if ing.contains("Aceituna"){
            ing.remove(at: ing.firstIndex(of: "Aceituna") ?? 0)
            self.contador-=1
        }else{
            if ing.count != cantidadi{
                ing.append("Aceituna")
                añadir()
            }
        }
        Desplegar()
    }
    
    @IBAction func Cebolla(_ sender: Any) {
        if ing.contains("Cebolla"){
            ing.remove(at: ing.firstIndex(of: "Cebolla") ?? 0)
            self.contador-=1
        }else{
            if ing.count != cantidadi{
                ing.append("Cebolla")
                añadir()
            }
        }
        Desplegar()
    }
    
    @IBAction func Pimientos(_ sender: Any) {
        if ing.contains("Pimientos"){
            ing.remove(at: ing.firstIndex(of: "Pimientos") ?? 0)
            self.contador-=1
        }else{
            if ing.count != cantidadi{
                ing.append("Pimientos")
                añadir()
            }
        }
        Desplegar()
    }
    
    @IBAction func Piña(_ sender: Any) {
        if ing.contains("Piña"){
            ing.remove(at: ing.firstIndex(of: "Piña") ?? 0)
            self.contador-=1
        }else{
            if ing.count != cantidadi{
                ing.append("Piña")
                añadir()
            }
        }
        Desplegar()
    }
    
    @IBAction func Anchoa(_ sender: Any) {
        if ing.contains("Anchoa"){
            ing.remove(at: ing.firstIndex(of: "Anchoa") ?? 0)
            self.contador-=1
        }else{
            if ing.count != cantidadi{
                ing.append("Anchoa")
                añadir()
            }
        }
        Desplegar()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func añadir(){
        self.contador+=1
    }
    @IBOutlet weak var ultimocontinuar: UIButton!
    @IBOutlet weak var Seleccion: UILabel!
    func Desplegar() {
        numeroleft.text = String(cantidadi-contador)
        Seleccion.text = ""
        for ind in ing{
            Seleccion.text! += "\(ind).\n"
        }
        if ing.count == cantidadi{
            ultimocontinuar.isUserInteractionEnabled = true
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        ultimocontinuar.isUserInteractionEnabled = false
    }
    @IBAction func continuar2(_ sender: Any) {
    }
    override func viewWillDisappear(_ animated: Bool) {
        for i in ing{
            aray.append(i)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! Confirmacion
        vc.respuestas = self.aray
        vc.ingredientes = self.ing
    }
}

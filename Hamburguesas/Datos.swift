//
//  Datos.swift
//  Hamburguesas
//
//  Created by David Garcia hernandez on 18/01/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises{
    let paiz: [String] = ["Perú","Mongolia","Irán","Libia","Sudán","Indonesia","México","Arabia Saudita","Groenlandia","Argelia","Argentina","India","Australia","Brasil","China","Estados Unidos","Canadá","Rusia","Chile","Cuba"]
    
    func obtenPais() -> String{
        return paiz[Int(arc4random())%paiz.count]
    }
}

class ColeccionDeHamburguesa{
    let hamburguesas : [String] = ["Hamburguesa de res con jamón serrano y piña",
    "Hamburguesa clásica de ternera, queso y tocino",
    "Hamburguesa de ternera con carne de cerdo",
    "Hamburguesa de ternera rellena de queso cheddar",
    "Hamburguesa con cebolla y queso manchego","Hamburguesa de pollo con chorizo",
    "Hamburguesa casera de pollo al curry",
    "Hamburguesa César",
    "Hamburguesa de pollo y mozzarella de búfala",
    "Hamburguesa de pollo a la ranchera","Hamburguesa de coliflor y avena al curry",
    "Hamburguesa de alubias negras, boniato y arroz",
    "Hamburguesa de judías pintas y champiñones","Hamburguesa mexicana con guacamole",
    "Hamburguesa al estilo griego",
    "Frikadellen o hamburguesa alemana especiada",
    "Hamburguesa moruna",
    "Hamburguesa italiana","Hamburguesa de salmón y patata",
    "Hamburguesa de atún picante"]
    
    func obtenHamburguesa() -> String {
        return hamburguesas[Int(arc4random())%hamburguesas.count]
    }
}


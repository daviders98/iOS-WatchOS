//
//  ValorElegirIngredientes.swift
//  Pizza watch WatchKit Extension
//
//  Created by David Garcia hernandez on 09/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import WatchKit

class ValorElegirIngredientes: NSObject {
    var masa : String = ""
    var tamaño : String = ""
    var queso : String = ""
    var numIng : Int = 1
    var array : [String] = []
    init(m: String, t: String, q: String, a : [String]){
        masa = m
        tamaño = t
        queso = q
        array = a
    }
}

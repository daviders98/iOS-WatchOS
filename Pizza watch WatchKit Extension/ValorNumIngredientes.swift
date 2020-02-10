//
//  ValorNumIngredientes.swift
//  Pizza watch WatchKit Extension
//
//  Created by David Garcia hernandez on 09/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import WatchKit

class ValorNumIngredientes: NSObject {
    var masa : String = ""
    var tamaño : String = ""
    var queso : String = ""
    var numIng : Int = 1
    init(m: String, t: String, q: String, n: Int){
        masa = m
        tamaño = t
        queso = q
        numIng = n
    }
}

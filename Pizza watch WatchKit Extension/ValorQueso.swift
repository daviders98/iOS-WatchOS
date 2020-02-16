//
//  ValorQueso.swift
//  Pizza watch WatchKit Extension
//
//  Created by David Garcia hernandez on 09/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import WatchKit

class ValorQueso: NSObject {
    var masa : String = ""
    var tamaño : String = ""
    var queso : String = ""
    init(m: String, t: String, q: String){
        masa = m
        tamaño = t
        queso = q
    }
}

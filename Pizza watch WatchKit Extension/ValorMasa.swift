//
//  ValorMasa.swift
//  Pizza watch WatchKit Extension
//
//  Created by David Garcia hernandez on 08/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import WatchKit

class ValorMasa: NSObject {
    var masa : String = ""
    var tamaño : String = ""
    init(m: String, t: String){
        masa = m
        tamaño = t
    }
}

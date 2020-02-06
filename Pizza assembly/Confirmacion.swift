//
//  Confirmacion.swift
//  Pizza assembly
//
//  Created by David Garcia hernandez on 05/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import UIKit

class Confirmacion: UIViewController {
    var respuestas : [String] = [""]
    var ingredientes : [String] = [""]
    var accum : String = ""
    @IBOutlet weak var tam: UILabel!
    @IBOutlet weak var mas: UILabel!
    @IBOutlet weak var que: UILabel!
    @IBOutlet weak var ing: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tam.text = respuestas[0]
        mas.text = respuestas[1]
        que.text = respuestas[2]
        for m in ingredientes{
            accum += m
            if ingredientes.lastIndex(of: m) == ingredientes.count-1{
                accum += "."
            }
            else{
                accum += ", "
            }
        }
        ing.text = accum
        // Do any additional setup after loading the view.
    }
    @IBAction func ultimoboton(_ sender: Any) {
        orden.text = "Tu orden ha sido enviada"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBOutlet weak var orden: UILabel!
}

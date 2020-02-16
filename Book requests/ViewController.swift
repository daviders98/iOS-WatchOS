//
//  ViewController.swift
//  Book requests
//
//  Created by David Garcia hernandez on 12/02/20.
//  Copyright © 2020 David Garcia hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate{
    var solicitud = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Busqueda.delegate = self
    }
    
    @IBOutlet weak var Busqueda: UISearchBar!
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.Busqueda.endEditing(true)
        if Busqueda.text != nil{
            solicitud = Busqueda.text!
            let url = NSURL(string: Request())
            let datos : NSData? = NSData(contentsOf: url! as URL)
            if datos == nil{
                Resultado.text = "ERROR, no hay conexión a internet"
            }else{
                let text = NSString(data: datos! as Data, encoding: String.Encoding.utf8.rawValue)
                Resultado.text = String(text!)
            }
        }
    }
    
    func Request()-> String{
       let str = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"
        return str + "\(solicitud)"
    }
    @IBOutlet weak var Resultado: UITextView!
    

}


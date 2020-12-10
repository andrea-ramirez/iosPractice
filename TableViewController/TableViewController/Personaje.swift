//
//  Personaje.swift
//  TableViewController
//
//  Created by Andrea Ramirez on 9/14/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class Personaje: NSObject {
    var nombre : String
    var foto : UIImage!
    
    init(nombre: String, foto: UIImage!) {
        self.nombre = nombre
        self.foto = foto
    }

}

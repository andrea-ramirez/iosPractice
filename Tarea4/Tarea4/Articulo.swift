//
//  Articulo.swift
//  Tarea4
//
//  Created by Andrea Ramirez on 10/4/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class Articulo: NSObject {
    var id : String
    var desc : String
    var cant : Int
    
    init(id: String, desc: String, cant: Int) {
        self.id = id
        self.desc = desc
        self.cant = cant
    }
}

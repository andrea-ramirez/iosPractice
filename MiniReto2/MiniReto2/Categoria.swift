//
//  Categoria.swift
//  MiniReto2
//
//  Created by Andrea Ramirez on 10/8/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class Categoria: NSObject {
    var titulo : String
    var color : UIColor
    
    init(titulo: String, color: UIColor) {
        self.titulo = titulo
        self.color = color
    }
}

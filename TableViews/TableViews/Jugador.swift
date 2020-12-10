//
//  Jugador.swift
//  TableViews
//
//  Created by Andrea Ramirez on 9/7/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class Jugador: NSObject {
    var nombre: String
    var puntos: Int
    var foto : UIImage!
    
    init(nombre : String, puntos : Int, foto: UIImage!) {
        self.nombre = nombre
        self.puntos = puntos
        self.foto = foto
    }
}

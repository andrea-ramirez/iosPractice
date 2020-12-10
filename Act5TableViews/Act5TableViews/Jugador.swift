//
//  Jugador.swift
//  Act5TableViews
//
//  Created by Andrea Ramirez on 9/28/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class Jugador: NSObject {
    var nombre: String
    var puntos: Int
    var casa: String
    var foto : UIImage!
    
    init(nombre: String, puntos: Int, foto: UIImage!, casa: String) {
        self.nombre = nombre
        self.puntos = puntos
        self.foto = foto
        self.casa = casa
    }
}

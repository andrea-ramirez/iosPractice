//
//  ViewControllerDetalle.swift
//  TableViews
//
//  Created by Andrea Ramirez on 9/8/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class ViewControllerDetalle: UIViewController {
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbPuntos: UILabel!
    
    var unJugador : Jugador!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgFoto.image = unJugador.foto
        lbNombre.text = unJugador.nombre
        lbPuntos.text = String(unJugador.puntos)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

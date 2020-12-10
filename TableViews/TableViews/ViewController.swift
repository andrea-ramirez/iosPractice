//
//  ViewController.swift
//  TableViews
//
//  Created by Andrea Ramirez on 9/7/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var listaJugadores = [
        Jugador(nombre: "Winnie Pooh", puntos: 600, foto: UIImage(named: "winnie")),
        Jugador(nombre: "Piglet", puntos: 750, foto: UIImage(named: "piglet")),
        Jugador(nombre: "Tigger", puntos: 430, foto: UIImage(named: "tigger")),
        Jugador(nombre: "Igor", puntos: 200, foto: UIImage(named: "igor")),
        Jugador(nombre: "Buho", puntos: 1030, foto: UIImage(named: "buho")),
        Jugador(nombre: "Rito", puntos: 800, foto: UIImage(named: "rito"))
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Jugadores"
    }
    
    //MARK: - Metodos de protocolo de Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaJugadores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda")!
        
        celda.textLabel?.text = listaJugadores[indexPath.row].nombre
        celda.detailTextLabel?.text = String( listaJugadores[indexPath.row].puntos)
        celda.imageView?.image = listaJugadores[indexPath.row].foto!
        
        return celda
    }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaDetalle = segue.destination as! ViewControllerDetalle
        let indice = tableView.indexPathForSelectedRow!
        
        vistaDetalle.unJugador = listaJugadores[indice.row]
        
    }


}


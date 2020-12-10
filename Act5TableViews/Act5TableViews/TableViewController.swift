//
//  TableViewController.swift
//  Act5TableViews
//
//  Created by Andrea Ramirez on 9/28/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell{
    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbCasa: UILabel!
    @IBOutlet weak var lbPuntos: UILabel!
    
    
}

class TableViewController: UITableViewController {
    
    var listaJugadores = [
        Jugador(nombre: "Harry", puntos: 100,foto: UIImage(named: "harry"), casa: "Gryffindor"),
        Jugador(nombre: "Ron", puntos: 350,foto: UIImage(named: "ron"), casa: "Gryffindor"),
        Jugador(nombre: "Hermione",puntos: 1300, foto: UIImage(named: "hermione"), casa: "Gryffindor"),
        Jugador(nombre: "Draco", puntos: 100,foto: UIImage(named: "draco"), casa: "Slytherin"),
        Jugador(nombre: "Severus", puntos: 500,foto: UIImage(named: "severus"), casa: "Slytherin"),
        Jugador(nombre: "Dumbledore", puntos: 60,foto: UIImage(named: "dumbledore"), casa: "Gryffindor"),
        Jugador(nombre: "Voldemort", puntos: 340,foto: UIImage(named: "voldemort"), casa: "Slytherin"),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaJugadores.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! customTableViewCell

        cell.lbNombre.text = listaJugadores[indexPath.row].nombre
        cell.lbCasa.text = listaJugadores[indexPath.row].casa
        cell.lbPuntos.text = String(listaJugadores[indexPath.row].puntos)
        cell.imgFoto.image = listaJugadores[indexPath.row].foto
        

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            listaJugadores.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let temp = listaJugadores[fromIndexPath.row]
        listaJugadores[fromIndexPath.row] = listaJugadores[to.row]
        listaJugadores[to.row] = temp
    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
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

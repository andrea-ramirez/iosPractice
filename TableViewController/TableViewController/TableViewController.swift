//
//  TableViewController.swift
//  TableViewController
//
//  Created by Andrea Ramirez on 9/14/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var lista = [
        Personaje(nombre: "Harry", foto: UIImage(named: "harry")),
        Personaje(nombre: "Ron", foto: UIImage(named: "ron")),
        Personaje(nombre: "Hermione", foto: UIImage(named: "hermione")),
        Personaje(nombre: "Draco", foto: UIImage(named: "draco")),
        Personaje(nombre: "Severus", foto: UIImage(named: "severus")),
        Personaje(nombre: "Dumbledore", foto: UIImage(named: "dumbledore")),
        Personaje(nombre: "Voldemort", foto: UIImage(named: "voldemort")),
    ]
    
    var listaNombres = ["Harry","Ron", "Hermione","Draco","Severus","Dumbledore","Voldemort"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        title = "Personajes"
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return lista.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = ""
        cell.imageView?.image = lista[indexPath.row].foto!

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaDetalle = segue.destination as! ViewController
        let indice = tableView.indexPathForSelectedRow!
        
        vistaDetalle.unPersonaje = lista[indice.row]
        vistaDetalle.nombre = listaNombres[indice.row]
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    

}

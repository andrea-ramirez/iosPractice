//
//  TableViewController.swift
//  MiniReto2
//
//  Created by Andrea Ramirez on 10/8/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, protocoloAgregaCategoria {
        
    var listaCategorias : [Categoria] = []
    var coloresAElegir : [UIColor] = [UIColor.blue, UIColor.green, UIColor.magenta, UIColor.red,
    UIColor.yellow, UIColor.orange, UIColor.cyan]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.leftBarButtonItem = self.editButtonItem
        title = "Categorías"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaCategorias.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = listaCategorias[indexPath.row].titulo
        cell.backgroundColor = listaCategorias[indexPath.row].color.withAlphaComponent(0.5)
        
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
            coloresAElegir.append(listaCategorias[indexPath.row].color)
            listaCategorias.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let temp = listaCategorias[fromIndexPath.row]
        listaCategorias[fromIndexPath.row] = listaCategorias[to.row]
        listaCategorias[to.row] = temp
    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - AgregarCategoria
    @IBAction func btAdd(_ sender: UIBarButtonItem) {
        if(listaCategorias.count < 7){
            let categoria = Categoria(titulo: "Default Categoria", color: coloresAElegir[0])
            coloresAElegir.remove(at: 0)
            listaCategorias.append(categoria)
            tableView.reloadData()
        }else{
            let alerta = UIAlertController(title: "Error", message: "Ya no se puede agregar una categoría", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alerta.addAction(accion)
            present(alerta, animated: true, completion: nil)
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewModificar = segue.destination as! ViewController
        viewModificar.delegado = self
        let indice = tableView.indexPathForSelectedRow!
        viewModificar.unaCategoria = listaCategorias[indice.row]
        viewModificar.index = indice.row
        viewModificar.coloresParaElegir = coloresAElegir
    }
    
    

    // MARK: - Método del protocolo modificarCategoria
    func modificarCategoria(cat: Categoria, indice: Int, colores: [UIColor]) {
        listaCategorias[indice] = cat
        tableView.reloadData()
        coloresAElegir = colores
    }
    

}

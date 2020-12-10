//
//  ViewController.swift
//  MiniReto2
//
//  Created by Andrea Ramirez on 10/8/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

protocol protocoloAgregaCategoria{
    func modificarCategoria(cat: Categoria, indice: Int, colores: [UIColor])
}


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var coloresParaElegir : [UIColor] = [UIColor.blue, UIColor.green, UIColor.magenta, UIColor.red,
    UIColor.yellow, UIColor.orange, UIColor.cyan]
    
    @IBOutlet weak var tfNombre: UITextField!
    var delegado : protocoloAgregaCategoria!
    var unaCategoria : Categoria!
    var nombreCategoria : String = ""
    var index: Int!
    var tempColor : UIColor!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfNombre.text = unaCategoria.titulo
        tfNombre.backgroundColor = unaCategoria.color.withAlphaComponent(0.5)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        let categoria = Categoria(titulo: tfNombre.text!, color: tfNombre.backgroundColor!)
        delegado?.modificarCategoria(cat: categoria, indice: index, colores: coloresParaElegir)
    }
    
    //MARK: Métodos de table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        coloresParaElegir.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaColores")!
        celda.textLabel?.text = ""
        celda.backgroundColor = coloresParaElegir[indexPath.row].withAlphaComponent(0.5)
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tempColor = tfNombre.backgroundColor!
        tfNombre.backgroundColor = coloresParaElegir[indexPath.row].withAlphaComponent(0.5)
        coloresParaElegir[indexPath.row] = tempColor.withAlphaComponent(0.5)
        tableView.reloadData()
    }
    

}


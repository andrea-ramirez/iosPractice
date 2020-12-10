//
//  ViewController.swift
//  Tarea4
//
//  Created by Andrea Ramirez on 10/4/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

protocol protocoloAgregaJugador{
    func agregaArticulo(art: Articulo)
}

class ViewController: UIViewController,  UINavigationControllerDelegate{
    
    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfDesc: UITextField!
    @IBOutlet weak var tfCant: UITextField!
    @IBOutlet weak var btGuardar: UIButton!
    var unArticulo : Articulo!
    
    var delegado : protocoloAgregaJugador!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfID.text = unArticulo.id
        tfDesc.text = unArticulo.desc
        tfCant.text = String(unArticulo.cant)
        
    }
    
    
    @IBAction func guardar(_ sender: UIButton) {
        if tfID.text == "" || tfDesc.text == "" || tfCant.text == ""{
            let alerta = UIAlertController(title: "Error", message: "Recuerda rellenar todos los campos", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alerta.addAction(accion)
            present(alerta, animated: true, completion: nil)
        }else{
            var articulo = Articulo(id: tfID.text!, desc: tfDesc.text!,  cant: Int(tfCant.text!)!)
            delegado.agregaArticulo(art: articulo)
            navigationController?.popViewController(animated: true)
        }
    }
    
}


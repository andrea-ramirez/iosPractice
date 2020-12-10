//
//  ViewControllerMensaje.swift
//  intento2
//
//  Created by Andrea Ramirez on 9/3/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class ViewControllerMensaje: UIViewController {
    
    @IBOutlet weak var tfMensaje: UITextField!
    var mensajeEditar : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tfMensaje.text = mensajeEditar!
    }
    

    
    // MARK: - Navigation

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if tfMensaje.text == ""{
            let alerta = UIAlertController(title: "Error", message: "Rellena el campo", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alerta.addAction(accion)
            present(alerta, animated: true, completion: nil)
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaInicial = segue.destination as! ViewController
        vistaInicial.mensaje = tfMensaje.text!
    }
    

}

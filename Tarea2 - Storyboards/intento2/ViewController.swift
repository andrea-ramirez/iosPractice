//
//  ViewController.swift
//  intento2
//
//  Created by Andrea Ramirez on 9/3/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbMensaje: UILabel!
    var mensaje : String!
    @IBOutlet weak var imagFoto: UIImageView!
    var image : UIImage!
    var colorFondo : UIColor!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindMensaje(segue: UIStoryboardSegue){
        lbMensaje.text = mensaje!
    }
    
    @IBAction func unwindFoto(segue: UIStoryboardSegue){
        imagFoto.image = image!
    }
    
    
    @IBAction func unwindColor(segue: UIStoryboardSegue){
        view.backgroundColor = colorFondo!
    }
 
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mensaje"{
            let viewMensaje = segue.destination as! ViewControllerMensaje
            viewMensaje.mensajeEditar = lbMensaje.text!
        }
    }


}


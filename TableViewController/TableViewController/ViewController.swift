//
//  ViewController.swift
//  TableViewController
//
//  Created by Andrea Ramirez on 9/14/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbNombre: UILabel!
    
    var unPersonaje : Personaje!
    var nombre : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgFoto.image = unPersonaje.foto
        lbNombre.text = nombre
    }


}


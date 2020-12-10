//
//  ViewControllerDos.swift
//  PrimerParcialV2A20
//
//  Created by Yolanda Martinez on 15/09/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerDos: UIViewController {
    @IBOutlet weak var botonRojo: UIButton!
    @IBOutlet weak var botonAzul: UIButton!
    var imagenEditar : UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaInicial = segue.destination as! ViewController
        
        if (sender as! UIButton) == botonRojo{
            vistaInicial.imagenBoton = botonRojo.imageView?.image
        }else{
            vistaInicial.imagenBoton = botonAzul.imageView?.image
        }
        
    }
    

}

//
//  ViewController.swift
//  PrimerParcialV2A20
//
//  Created by Yolanda Martinez on 15/09/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numeroMorado : Int = 1

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    // MARK: - Parte 1 (Rosa)
    
    @IBOutlet weak var imgCaballo: UIImageView!
    
    @IBAction func moverArriba(_ sender: UIButton) {
        UIView.animate(withDuration: 1){
            self.imgCaballo.frame.origin.y = self.imgCaballo.frame.origin.y - 70
        }
    }
    
    @IBAction func moverAbajo(_ sender: UIButton) {
        UIView.animate(withDuration: 1){
            self.imgCaballo.frame.origin.y = self.imgCaballo.frame.origin.y + 70
        }
    }
    
    // MARK: - Parte 2 (Morada)
    
    @IBOutlet weak var lbNumero: UILabel!
    @IBAction func incrementar(_ sender: UISwipeGestureRecognizer) {
        numeroMorado = numeroMorado + 1
        lbNumero.text = String(numeroMorado)
    }
    @IBAction func decrementar(_ sender: UISwipeGestureRecognizer) {
        numeroMorado = numeroMorado - 1
        lbNumero.text = String(numeroMorado)
    }
    
 
    // MARK: - Parte 3 (Naranja)
    
    @IBOutlet weak var imgEsfera: UIImageView!
    var imagenBoton : UIImage!
    
 
    @IBAction func unwind(segue: UIStoryboardSegue) {
        imgEsfera.image = imagenBoton!
    }
 

    
    // MARK: - Parte 4 (Verde)
    
    @IBOutlet weak var tfDato1: UITextField!
    @IBOutlet weak var tfDato2: UITextField!
    @IBOutlet weak var lbResultado: UILabel!
    var suma: Bool = false
    var resultado : Int!
    
    @IBAction func `switch`(_ sender: UISwitch) {
        if suma == true{
            suma = false
        }else{
            suma = true
        }
    }
 
    
    @IBAction func accionBotonCalcula(_ sender: UIButton) {
        if let dato1 = Int(tfDato1.text!), let dato2 = Int(tfDato2.text!){
            if suma == true{
                resultado = dato1 + dato2
                lbResultado.text = "Resultado = " + String(resultado)
            }else{
                resultado = dato1 * dato2
                lbResultado.text = "Resultado = " + String(resultado)
            }
        }
    }
    
    
}


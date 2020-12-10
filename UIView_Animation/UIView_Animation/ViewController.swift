//
//  ViewController.swift
//  UIView_Animation
//
//  Created by Andrea Ramirez on 8/27/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var vCuadro: UIView!

    @IBAction func slider(_ sender: UISlider) {
        vCuadro.frame.origin.y = (CGFloat(sender.value) * (imagen.frame.height)) + imagen.frame.origin.y
    }
    
    @IBAction func `switch`(_ sender: UISwitch) {
        if view.backgroundColor != #colorLiteral(red: 0.8542195431, green: 0.6628682003, blue: 0.6490176777, alpha: 1){
            UIView.animate(withDuration: 2){
                self.view.backgroundColor = #colorLiteral(red: 0.8542195431, green: 0.6628682003, blue: 0.6490176777, alpha: 1)
            }
        }else{
            UIView.animate(withDuration: 2){
                self.view.backgroundColor = UIColor.systemBackground;
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imagen.image = UIImage(named: "waffles")
    }
    
    


}


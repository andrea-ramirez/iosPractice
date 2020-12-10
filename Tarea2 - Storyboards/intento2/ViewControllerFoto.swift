//
//  ViewControllerFoto.swift
//  intento2
//
//  Created by Andrea Ramirez on 9/4/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class ViewControllerFoto: UIViewController {
    //var image : UIImage!
    @IBOutlet weak var btAmazonas: UIButton!
    @IBOutlet weak var btDesert: UIButton!
    @IBOutlet weak var btOcean: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistaInicial = segue.destination as! ViewController
        
        if (sender as! UIButton) == btAmazonas{
            vistaInicial.image = btAmazonas.currentImage!
        }else if (sender as! UIButton) == btDesert{
            vistaInicial.image = btDesert.currentImage!
        }else{
            //ocean
            vistaInicial.image = btOcean.currentImage!
            
        }
    }
    

}

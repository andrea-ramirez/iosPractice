//
//  ViewControllerColor.swift
//  intento2
//
//  Created by Andrea Ramirez on 9/4/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class ViewControllerColor: UIViewController {
    @IBOutlet weak var btGreen: UIButton!
    @IBOutlet weak var btBlue: UIButton!
    @IBOutlet weak var btPurple: UIButton!
    @IBOutlet weak var btPink: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaInicial = segue.destination as! ViewController
        
        if (sender as! UIButton) == btGreen{
            vistaInicial.colorFondo = btGreen.backgroundColor!
        }else if (sender as! UIButton) == btBlue{
            vistaInicial.colorFondo = btBlue.backgroundColor!
        }else if (sender as! UIButton) == btPurple{
            vistaInicial.colorFondo = btPurple.backgroundColor!
        }else{
            //pink
            vistaInicial.colorFondo = btPink.backgroundColor!
        }
        
    }
    

}

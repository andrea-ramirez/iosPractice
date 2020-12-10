//
//  ViewController.swift
//  MiniReto1
//
//  Created by Andrea Ramirez on 9/2/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imagen1: UIImageView!
    @IBOutlet weak var imagen2: UIImageView!
    var sumaTotal = [Int](repeating: 0, count: 11)
    var sumaTemp:Int = 0
    @IBOutlet weak var lbContadores: UIStackView!
    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var lb3: UILabel!
    @IBOutlet weak var lb4: UILabel!
    @IBOutlet weak var lb5: UILabel!
    @IBOutlet weak var lb6: UILabel!
    @IBOutlet weak var lb7: UILabel!
    @IBOutlet weak var lb8: UILabel!
    @IBOutlet weak var lb9: UILabel!
    @IBOutlet weak var lb10: UILabel!
    @IBOutlet weak var lb11: UILabel!
    @IBOutlet weak var lb12: UILabel!
    @IBOutlet weak var pv2: UIProgressView!
    @IBOutlet weak var pv3: UIProgressView!
    @IBOutlet weak var pv4: UIProgressView!
    @IBOutlet weak var pv5: UIProgressView!
    @IBOutlet weak var pv6: UIProgressView!
    @IBOutlet weak var pv7: UIProgressView!
    @IBOutlet weak var pv8: UIProgressView!
    @IBOutlet weak var pv9: UIProgressView!
    @IBOutlet weak var pv10: UIProgressView!
    @IBOutlet weak var pv11: UIProgressView!
    @IBOutlet weak var pv12: UIProgressView!
    
    //var array : [UILabel] = [...]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagen1.image = UIImage(named: "dado1")
        imagen2.image = UIImage(named: "dado1")
        
        dump(sumaTotal)
    }
    
    func labels(num: Int) -> UILabel{
        switch num {
        case 2:
            return lb2
        case 3:
            return lb3
        case 4:
            return lb4
        case 5:
            return lb5
        case 6:
            return lb6
        case 7:
            return lb7
        case 8:
            return lb8
        case 9:
            return lb9
        case 10:
            return lb10
        case 11:
            return lb11
        case 12:
            return lb12
        default:
            return lb2
        }
    }
    
    func progressViews(num: Int) -> UIProgressView{
        switch num {
        case 2:
            return pv2
        case 3:
            return pv3
        case 4:
            return pv4
        case 5:
            return pv5
        case 6:
            return pv6
        case 7:
            return pv7
        case 8:
            return pv8
        case 9:
            return pv9
        case 10:
            return pv10
        case 11:
            return pv11
        case 12:
            return pv12
        default:
            return pv2
        }
    }
    /**
    func colorProgreso(num: Float){
        
    }
    */
    
    @IBAction func lanza(_ sender: UIButton) {
        //generar numero random
        let numRandom1 = Int.random(in: 1...6)
        let numRandom2 = Int.random(in: 1...6)
        
        //asignar nuevas imagenes de dados
        imagen1.image = UIImage(named: "dado" + String(numRandom1))
        imagen2.image = UIImage(named: "dado" + String(numRandom2))
        
        //sumar al contador del array
        sumaTemp = numRandom1 + numRandom2
        sumaTotal[sumaTemp-2] = sumaTotal[sumaTemp-2] + 1
        
        dump(sumaTotal)
        
        //cambiar label en stack
        labels(num: sumaTemp).text = String(sumaTotal[sumaTemp-2])
        
        //progress view
        let pvCurr = progressViews(num: sumaTemp)
        let prog : Float = Float(pvCurr.progress) + 0.02
        pvCurr.setProgress(prog, animated: true)


        if(pvCurr.progress < 0.2){
            pvCurr.progressTintColor = #colorLiteral(red: 0.6636014923, green: 0.05830285426, blue: 0.06869022766, alpha: 1)
        }else if(pvCurr.progress >= 0.2 && pvCurr.progress < 0.4){
            pvCurr.progressTintColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        }else if(pvCurr.progress >= 0.4 && pvCurr.progress < 0.6){
            pvCurr.progressTintColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        }else if(pvCurr.progress >= 0.6 && pvCurr.progress < 0.8){
            pvCurr.progressTintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }else{
            pvCurr.progressTintColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        }
    }

}



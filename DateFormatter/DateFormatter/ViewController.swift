//
//  ViewController.swift
//  DateFormatter
//
//  Created by Andrea Ramirez on 9/10/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var lbMonth: UILabel!
    @IBOutlet weak var lbDay: UILabel!
    @IBOutlet weak var lbDayName: UILabel!
    
    var fecha =  Date()
    let formato : DateFormatter = DateFormatter()
    //var dateComponent = DateComponents()
    //dateComponent.day = 1
    

    override func viewDidLoad() {
        super.viewDidLoad()

        updateLabels()
    }
    
    func updateLabels() -> Void{
        formato.dateFormat = "dd"
        lbDay.text = formato.string(from: fecha)
        formato.dateFormat = "EEEE"
        lbDayName.text = formato.string(from: fecha)
        formato.dateFormat = "MMMM"
        lbMonth.text = formato.string(from: fecha)
        formato.dateFormat = "yyyy"
        lbYear.text = formato.string(from: fecha)
    }
    
    @IBAction func diaMas(_ sender: UISwipeGestureRecognizer) {
        
        var dateComponent = DateComponents()
        dateComponent.day = 1
        let manana = Calendar.current.date(byAdding: dateComponent, to: fecha)
        fecha = manana!
        
        updateLabels()
    }
    
    @IBAction func diaMenos(_ sender: UISwipeGestureRecognizer) {
        var dateComponent = DateComponents()
        dateComponent.day = -1
        let ayer = Calendar.current.date(byAdding: dateComponent, to: fecha)
        fecha = ayer!
        
        updateLabels()
    }
    
}


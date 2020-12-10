//
//  ViewController.swift
//  UserDefault
//
//  Created by Andrea Ramirez on 10/8/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var switchSon: UISwitch!
    @IBOutlet weak var sliderVol: UISlider!
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfNombre.delegate = self
        if let nom = defaults.value(forKey: "nombre"){
            tfNombre.text = nom as? String
        }
        if let vol = defaults.value(forKey: "volumen"){
            sliderVol.value = (vol as? Float)!
        }
        if let soni = defaults.value(forKey: "sonido"){
            switchSon.isOn = soni as! Bool
        }
        
        segmentedControl.selectedSegmentIndex = defaults.integer(forKey: "index")
        let col : Int = defaults.integer(forKey: "index")
        if col == 0{
            view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        }else if col == 1{
            view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        }else{
            view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        }

    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print(tfNombre.text!)
        defaults.setValue(tfNombre.text!, forKey: "nombre")
    }
    
    @IBAction func controlColor(_ sender: UISegmentedControl) {

        if sender.selectedSegmentIndex == 0{
            view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
            defaults.setValue(0, forKey: "index")
        }else if sender.selectedSegmentIndex == 1{
            view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
            defaults.setValue(1, forKey: "index")
        }else{
            view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            defaults.setValue(2, forKey: "index")
        }
    }
    
    @IBAction func sliderVolumen(_ sender: UISlider) {
        print(sender.value)
        defaults.setValue(sender.value, forKey:"volumen")
    }
    
    @IBAction func switchSonido(_ sender: UISwitch) {
        print(sender.isOn)
        defaults.setValue(sender.isOn, forKey: "sonido")
    }
    

    
}


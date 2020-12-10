//
//  ViewController.swift
//  T5_PickerView
//
//  Created by Andrea Ramirez on 10/22/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var lbWin: UILabel!
    
    var pickerData : [UIImage?] = [UIImage(named: "emoji1")!,UIImage(named: "emoji2")!, UIImage(named: "emoji3")!, UIImage(named: "emoji4")!, UIImage(named: "emoji5")!]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //connect to data
        self.picker.delegate = self
        self.picker.dataSource = self
        
        self.picker.selectRow(0, inComponent: 0, animated: true)
        self.picker.selectRow(0, inComponent: 1, animated: true)
        self.picker.selectRow(0, inComponent: 2, animated: true)
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return CGFloat(100)
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return CGFloat(100)
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {

        return UIImageView(image: pickerData[row])
    }
 
 
    
    @IBAction func go(_ sender: UIButton) {
        let num1 = Int.random(in: 0...4)
        let num2 = Int.random(in: 0...4)
        let num3 = Int.random(in: 0...4)
        
        self.picker.selectRow(num1, inComponent: 0, animated: true)
        self.picker.selectRow(num2, inComponent: 1, animated: true)
        self.picker.selectRow(num3, inComponent: 2, animated: true)
        
        if num1 == num2 && num2 == num3{
            lbWin.alpha = 1
        }else{
            lbWin.alpha = 0
        }
        
    }
    
    @IBAction func reset(_ sender: UIButton) {
        lbWin.alpha = 0
        
        self.picker.selectRow(0, inComponent: 0, animated: true)
        self.picker.selectRow(0, inComponent: 1, animated: true)
        self.picker.selectRow(0, inComponent: 2, animated: true)
    }
}


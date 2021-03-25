//
//  ViewController.swift
//  CalcApp
//
//  Created by 中村悠太 on 2021/03/23.
//

import UIKit

class ViewController: UIViewController {

    
    var carModel=Car()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        carModel.frontWheel=10
        carModel.rearWheel=10
        
    }

    @IBAction func duAction(_ sender: Any) {
        
        carModel.drive()
        carModel.move(toBack:"バックしています")
        let total=carModel.plusAndMinus(num1: carModel.frontWheel, num2: carModel.rearWheel)
        print("タイヤの合計数　　\(total)")
    }
    
}


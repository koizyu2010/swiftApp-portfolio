//
//  ViewController.swift
//  Swift5countUp1
//
//  Created by 中村悠太 on 2021/03/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var countUpLabel: UILabel!
    var count=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countUpLabel.text=String(count)
    }
    
    
    @IBAction func plus(_ sender: Any) {
        count=count+1
        
        
        countUpLabel.text=String(count)
        
        
        changeTextColor()

        
        
        
        
    }
    

    @IBAction func minus(_ sender: Any) {
        count=count-1
        
        
        countUpLabel.text=String(count)

        resetColor()
        
    }
    
    func changeTextColor(){
        if(count>=9){
            countUpLabel.textColor = .yellow
        }
        
    }
    
    func resetColor(){
        if(count<=10){
            countUpLabel.textColor = .white
        }
    }
    
}


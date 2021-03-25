//
//  ViewController.swift
//  Swift6BasicApp1
//
//  Created by 中村悠太 on 2021/03/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imgeView: UIImageView!
    
    @IBOutlet weak var bulrView: UIVisualEffectView!
    
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var tapCountLabel: UILabel!
    
    
    var count=0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tap(_ sender: Any) {
        
        count=count+1
        countLabel.text=String(count)
        
        
        if count>5{
            imgeView.image=UIImage(named:"back2")
            
        }
        if(count>10){
            imgeView.image=UIImage(named:"back3")
        }
        
        switch count {
        case 6:
            tapCountLabel.text="6です"
            break
        case 10:
            tapCountLabel.text="10です"
            break
        default:
            tapCountLabel.text="6でも10でもありません"
            break
        }
        
    }
    
    
    

}


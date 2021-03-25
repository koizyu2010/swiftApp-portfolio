//
//  ViewController.swift
//  Swift_seni
//
//  Created by 中村悠太 on 2021/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var count=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(_ sender: Any) {
        count+=1
        
        
        
        if count==10{
           // count=0
           //performSegue(withIdentifier: "next", sender: nil)
            
            let nextVC=storyboard?.instantiateViewController(identifier: "next") as! NextViewController
            
            navigationController?.pushViewController(nextVC, animated: true)
        }
        label.text=String(count)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC=segue.destination as! NextViewController
        
        nextVC.count2=count
    }
    
}


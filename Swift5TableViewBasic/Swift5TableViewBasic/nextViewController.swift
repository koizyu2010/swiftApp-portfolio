//
//  nextViewController.swift
//  Swift5TableViewBasic
//
//  Created by 中村悠太 on 2021/03/24.
//

import UIKit

class nextViewController: UIViewController {

    
    var todoString=String()
    @IBOutlet weak var todoLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        todoLabel.text=todoString
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden=false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

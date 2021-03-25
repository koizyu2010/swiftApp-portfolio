//
//  ViewController.swift
//  Swift5Keybord1
//
//  Created by 中村悠太 on 2021/03/23.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var userNameTexitField: UITextField!
    
    
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        userNameTexitField.delegate=self
        passWordTextField.delegate=self
        
        
    }


    @IBAction func login(_ sender: Any) {
        
        
        logoImageView.image=UIImage(named:"loginOK")
        
        
        userNameLabel.text=userNameTexitField.text
        passwordLabel.text=passWordTextField.text
        
        
    }
    
    
    //タッチでキーボード閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    //リターンキーでキーボード閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //キーボードが閉じる
        textField.resignFirstResponder()
        return true
    }
    
    
}


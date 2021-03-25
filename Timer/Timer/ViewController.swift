//
//  ViewController.swift
//  Timer
//
//  Created by 中村悠太 on 2021/03/23.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
    
    var timer=Timer()
    
    var count = Int()
    
    var imageArray=[UIImage]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        stopButton.isEnabled=false
        
        
        for i in 0..<5{
            print(i)
            
            let image=UIImage(named:"\(i)")
            imageArray.append(image!)
            
        }
        
        imageview.image=UIImage(named:"0")
        
    }
    
    func startTimer(){
        
        //0.2秒ごとにタイマーを進める
        timer=Timer.scheduledTimer(timeInterval: 0.2, target:self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    
    //0.2秒ごとに呼ばれる
    @objc func timerUpdate(){
        
        count=count+1
        
        if(count>4){
            count=0
        }
        
        imageview.image = imageArray[count]
        
        
    }
    
    
    @IBAction func stop(_ sender: Any) {
        
        
        
        //stopボタンを押せなくする
        startButton.isEnabled=true
        stopButton.isEnabled=false
        timer.invalidate()
        
        
        

        
    }
    
    
    @IBAction func start(_ sender: Any) {
        
        
        
        //startボタンを押せなくする
        startButton.isEnabled=false
        stopButton.isEnabled=true
        
        startTimer()


    }
    

}


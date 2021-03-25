//
//  ViewController.swift
//  Swift6WKWebView1
//
//  Created by 中村悠太 on 2021/03/24.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {

    
    @IBOutlet weak var indicater: UIActivityIndicatorView!
    
    var webView=WKWebView()
    
    
    @IBOutlet weak var toolbar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        indicater.isHidden=true
        
        
        //大きさを決めていく
        webView.frame=CGRect(x:0,y:0,width: view.frame.size.width,height:view.frame.size.height-toolbar.frame.size.height)
        
        //貼り付ける
        view.addSubview(webView)
        
        webView.navigationDelegate=self
        
        //URLをロードする
        let url = URL(string:"https://www.kurashiru.com/")
        let request = URLRequest(url:url!)
        webView.load(request)
        
        indicater.layer.zPosition=2
    }
    
    //ロードが完了したとき
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        indicater.isHidden=true
        indicater.stopAnimating()
        
        
    }
    //ロードが開始されたとき
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        indicater.isHidden=false
        //いんでぃけーたーを回す
        indicater.startAnimating()
        
    }

    @IBAction func back(_ sender: Any) {
        webView.goBack()
        
    }
    
    
    @IBAction func go(_ sender: Any) {
        
        webView.goForward()
        
    }
    
    
    
    
    
}


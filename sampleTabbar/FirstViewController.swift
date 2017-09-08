//
//  FirstViewController.swift
//  sampleTabbar
//
//  Created by Eriko Ichinohe on 2017/09/08.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    // 画面が起動された時1回発動（再度画面が開いた時発動しない）
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 画面が表示されるたびに毎回発動
    override func viewWillAppear(_ animated: Bool) {
        
        //AppDelegateにアクセスするための準備（グローバル変数を使うため）
        let myApp = UIApplication.shared.delegate as! AppDelegate
        
        // グローバル変数myCountの値をカウントアップ
        myApp.myCount += 1
        
        // myCountの値をラベルに表示
        myLabel.text = "\(myApp.myCount)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  Uranai
//
//  Created by moritakuya on 2016/02/18.
//  Copyright © 2016年 moritakuya. All rights reserved.
//

import UIKit
import CoreMotion
import iAd


class ViewController: UIViewController,ADBannerViewDelegate {
    @IBOutlet weak var shakeLabel: UILabel!
    @IBOutlet weak var myIAd: ADBannerView!
       let motionManager = CMMotionManager()
    var x = 0
    var y = 0
    var z = 0
    var shakecount = 0
    
    //iAdバーナー表示
    
    
    
    
    

    @IBOutlet weak var myImageView: UIImageView!

    @IBOutlet weak var myAad: ADBannerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //iADの設定
        //self.myAad.delegate = self
        //self.myAad.hidden = true
        
        //角を丸める
        //self.motionManager.layer.cornerRadius = 30
        //
        self.motionManager.accelerometerUpdateInterval = 0.2
        self.motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue()) {
            (data, error) in
            dispatch_async(dispatch_get_main_queue()) {
                self.updateAccelerationData(data!.acceleration)
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func myBtn(sender: AnyObject) {
    }
    func updateAccelerationData(data: CMAcceleration) {
        
        print("x = \(Int(data.x)), y = \(Int(data.y)), z = \(Int(data.z))")
        
        var isShaken = self.x != Int(data.x) || self.y != Int(data.y) || self.z != Int(data.z)
        
        
        
        if isShaken {
            // シェイクされたときの処理
            shakecount++
            
        }
        
        
        if (shakecount == 10){
            print("10回シェイクしました！")
            self.shakeLabel!.text = "もう少し"
            
        }
        if (shakecount == 15){
            print("5回シェイクしました！")
            //shakeLabel!.text = "完了"
            
        }
        
        self.x = Int(data.x)
        self.y = Int(data.y)
        self.z = Int(data.z)
    }
    

    
    
}


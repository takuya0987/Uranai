//
//  InputViewController.swift
//  Uranai
//
//  Created by moritakuya on 2016/02/22.
//  Copyright © 2016年 moritakuya. All rights reserved.
//

import UIKit
import iAd

class InputViewController: UIViewController,ADBannerViewDelegate  {

    @IBOutlet weak var myIAd: ADBannerView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        //iADの設定
            self.myIAd.delegate = self
            self.myIAd.hidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

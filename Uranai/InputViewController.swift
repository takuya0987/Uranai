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
  
    @IBOutlet weak var myQ1: UILabel!
    @IBOutlet weak var myQ2: UILabel!
    @IBOutlet weak var myQ3: UILabel!
    @IBOutlet weak var myQ4: UILabel!
    @IBOutlet weak var myQ5: UILabel!
    @IBOutlet weak var myQ1Btn: UISwitch!
    @IBOutlet weak var myQ2Btn: UISwitch!
    @IBOutlet weak var myQ3Btn: UISwitch!
    @IBOutlet weak var myQ4Btn: UISwitch!
    @IBOutlet weak var myQ5Btn: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //iADの設定
           // self.myIAd.delegate = self
           // self.myIAd.hidden = true

        // Do any additional setup after loading the view.
   
         self.navigationItem.title = "当てはまるものを選んでください"
    
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

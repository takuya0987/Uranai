//
//  resultViewController.swift
//  Uranai
//
//  Created by moritakuya on 2016/02/22.
//  Copyright © 2016年 moritakuya. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {

    @IBOutlet weak var person: UILabel!
    
    @IBOutlet weak var detailPerson: UITextView!
    
    @IBOutlet weak var personPhoto: UIImageView!
    
    @IBOutlet weak var textViewMaigen: UITextView!
    
    @IBOutlet weak var resultText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var personlist = ["スティーブ・ジョブズ","孫正義","イーロン・マスク","ウォルト・ディズニー","柳井正","アルベルト・アインシュタイン","ウォーレン・バフェット","ラリー・エリソン","松下幸之助","ロックフェラー","二コラ・テスラ","ラリー・ペイジ","稲盛和夫","マイケル・ジャクソン","ジェフ・ベゾス","ジャック・マー","マーク・ザッカーバーグ","リチャード・ブランソン","アマンシオ・オルテガ","アンドリュー・カーネギー","ヘンリー・フォード","三木谷浩史","トーマス・エジソン","ビル・ゲイツ"]
        var personDetaillist = ["○アップル創業者　　　1976年最初のApple Iを販売を皮切りにiPhone、iPodなど多くの製品を世に生み出す。後に新会社ピクサーを創設。映画トイストーリーを爆発的人気に。誰もが認める世界一の経営者。","○ソフトバンクグループ創業者    シャープに自動翻訳機を売り1億円を元手に米国でソフトウェア開発会社を設立。インベーダーゲーム機を輸入しアメリカで利益を得る","イーロンマスク説明","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","","","","","",""]
        var personPhotolist = ["jobu.jpeg","son.jpeg","elon.jpeg","disney.png","yunikuro.jpg","ain.jpeg","bafetto.jpeg","oracl.jpg","matsusita.jpeg","John_D._Rockefeller_1885.jpg","nikoratesura.jpg","rally.jpeg","inamori.jpeg","jackson.jpeg","amazon.jpeg","aribaba.jpeg","facebook.jpeg","Branson.jpg","zara.jpg","carnegie.jpeg","ford.jpeg","mikitani.jpeg","ejison.jpg","bil.PNG"]
        var personMaigenlist = ["名言：ハングリーであれ愚かであれ。","名言：いずれはコンピュータが自己学習をし、自らプログラミングをする時代がやってきます。しかも人間よりもはるかに鋭く未来を洞察したり、発明したりするでしょう。","名言：起業家は粘り強く、毎週80～100時間、地獄のように働くべきです。これは成功確率を上げるために必要なことです。","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","","","","","",""]
        var result = ["あなたは物事を自由に考え想像性が豊か。周囲の考えから解き放たれているあなたは、度々クレイジーだと思われる一面も！周りには理解されにくい事が多いが、一度決めたら必ず成し遂げる事ができる強い意志を持ったスティーブジョブズタイプ。冒険心と挑戦を止めなければ素晴らしい人生に。","あなたは野心家なタイプ","あなたはイーロンマスクタイプ","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","","","","","",""]
   
        //どれか一つをランダムに選ぶ
        var r = Int(arc4random()) % personlist.count
        person.text = personlist[r]
        
        detailPerson.text = personDetaillist[r]
        
        personPhoto.image = UIImage(named:personPhotolist[r])
        
        textViewMaigen.text = personMaigenlist[r]
        
        resultText.text = result[r]
        
        
        
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

//
//  PasscodeViewController.swift
//  PassMemo
//
//  Created by 副島拓哉 on 2021/01/24.
//

import UIKit
import RxSwift
import RealmSwift

class PasscodeViewController: UIViewController {
    
    ///タッチステータスのリンク
    @IBOutlet weak var countBatch1: UIView!
    @IBOutlet weak var countBatch2: UIView!
    @IBOutlet weak var countBatch3: UIView!
    @IBOutlet weak var countBatch4: UIView!
    
    ///数字パッドのリンク
    @IBOutlet weak var numPad0: UIButton!
    @IBOutlet weak var numPad1: UIButton!
    @IBOutlet weak var numPad2: UIButton!
    @IBOutlet weak var numPad3: UIButton!
    @IBOutlet weak var numPad4: UIButton!
    @IBOutlet weak var numPad5: UIButton!
    @IBOutlet weak var numPad6: UIButton!
    @IBOutlet weak var numPad7: UIButton!
    @IBOutlet weak var numPad8: UIButton!
    @IBOutlet weak var numPad9: UIButton!
    
    //定数宣言
    let passCord :Int = 0
    var passCordNow :String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        ///タッチステータスの表示設定
        countBatch1.layer.borderWidth = 1
        countBatch2.layer.borderWidth = 1
        countBatch3.layer.borderWidth = 1
        countBatch4.layer.borderWidth = 1
        
        countBatch1.layer.borderColor = UIColor(red: 0.549, green: 0.901, blue:0.486, alpha: 1.000).cgColor
        countBatch2.layer.borderColor = UIColor(red: 0.549, green: 0.901, blue:0.486, alpha: 1.000).cgColor
        countBatch3.layer.borderColor = UIColor(red: 0.549, green: 0.901, blue:0.486, alpha: 1.000).cgColor
        countBatch4.layer.borderColor = UIColor(red: 0.549, green: 0.901, blue:0.486, alpha: 1.000).cgColor
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numPadAcction0(_ sender: Any) {
        passCordNow += "0"
    }
    @IBAction func numPadAcction1(_ sender: Any) {
        passCordNow += "1"
    }
    @IBAction func numPadAcction2(_ sender: Any) {
        passCordNow += "2"
    }
    @IBAction func numPadAcction3(_ sender: Any) {
        passCordNow += "3"
    }
    @IBAction func numPadAcction4(_ sender: Any) {
        passCordNow += "4"
    }
    @IBAction func numPadAcction5(_ sender: Any) {
        passCordNow += "5"
    }
    @IBAction func numPadAcction6(_ sender: Any) {
        passCordNow += "6"
    }
    @IBAction func numPadAcction7(_ sender: Any) {
        passCordNow += "7"
    }
    @IBAction func numPadAcction8(_ sender: Any) {
        passCordNow += "8"
    }
    @IBAction func numPadAcction9(_ sender: Any) {
        passCordNow += "9"
    }
    @IBAction func numPadAcctionBackSpace(_ sender: Any) {
        passCordNow = String(passCordNow.dropLast())
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

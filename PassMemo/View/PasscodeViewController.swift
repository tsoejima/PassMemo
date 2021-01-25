//
//  PasscodeViewController.swift
//  PassMemo
//
//  Created by 副島拓哉 on 2021/01/24.
//

import UIKit
import RxSwift
import RealmSwift
import LocalAuthentication

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
    
    //デバック用ラベル削除予定
    @IBOutlet weak var debugLabel: UILabel!
    
    
    //定数宣言
    let passCord :Int = 0
    var passCordNow :String = ""
    var batchStetas :Int = 0 {
        didSet{
            debugLabel.text = passCordNow
            print(batchStetas)
            if batchStetas == 1 {
                countBatch1.layer.backgroundColor = UIColor(red: 0.549, green: 0.901, blue:0.486, alpha: 1.000).cgColor
                countBatch2.layer.backgroundColor = UIColor(white: 1, alpha: 1).cgColor
                countBatch3.layer.backgroundColor = UIColor(white: 1, alpha: 1).cgColor
                countBatch4.layer.backgroundColor = UIColor(white: 1, alpha: 1).cgColor
            }
            else if batchStetas == 2 {
                countBatch1.layer.backgroundColor = UIColor(red: 0.549, green: 0.901, blue:0.486, alpha: 1.000).cgColor
                countBatch2.layer.backgroundColor = UIColor(red: 0.549, green: 0.901, blue:0.486, alpha: 1.000).cgColor
                countBatch3.layer.backgroundColor = UIColor(white: 1, alpha: 1).cgColor
                countBatch4.layer.backgroundColor = UIColor(white: 1, alpha: 1).cgColor
                
            }
            else if batchStetas == 3 {
                countBatch1.layer.backgroundColor = UIColor(red: 0.549, green: 0.901, blue:0.486, alpha: 1.000).cgColor
                countBatch2.layer.backgroundColor = UIColor(red: 0.549, green: 0.901, blue:0.486, alpha: 1.000).cgColor
                countBatch3.layer.backgroundColor = UIColor(red: 0.549, green: 0.901, blue:0.486, alpha: 1.000).cgColor
                countBatch4.layer.backgroundColor = UIColor(white: 1, alpha: 1).cgColor
            }
            else if batchStetas == 4 {
                countBatch1.layer.backgroundColor = UIColor(red: 0.549, green: 0.901, blue:0.486, alpha: 1.000).cgColor
                countBatch2.layer.backgroundColor = UIColor(red: 0.549, green: 0.901, blue:0.486, alpha: 1.000).cgColor
                countBatch3.layer.backgroundColor = UIColor(red: 0.549, green: 0.901, blue:0.486, alpha: 1.000).cgColor
                countBatch4.layer.backgroundColor = UIColor(red: 0.549, green: 0.901, blue:0.486, alpha: 1.000).cgColor
            }
            else if batchStetas == 0 {
                countBatch1.layer.backgroundColor = UIColor(white: 1, alpha: 1).cgColor
                countBatch2.layer.backgroundColor = UIColor(white: 1, alpha: 1).cgColor
                countBatch3.layer.backgroundColor = UIColor(white: 1, alpha: 1).cgColor
                countBatch4.layer.backgroundColor = UIColor(white: 1, alpha: 1).cgColor
                }
            else{
                print("Error")
            }
        }
    }

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
        
        let context = LAContext()
            let reason = "This app uses Touch ID / Facd ID to secure your data."
            var authError: NSError?
            
            if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &authError) {
              context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { (success, error) in
                if success {
                    self.goNext()
                } else {
                  print("Error")
                }
              }
            } else {
            }
    }
    
    @IBAction func numPadAcction0(_ sender: Any) {
        passCordNow += "0"
        batchStetas += 1
    }
    @IBAction func numPadAcction1(_ sender: Any) {
        passCordNow += "1"
        batchStetas += 1
    }
    @IBAction func numPadAcction2(_ sender: Any) {
        passCordNow += "2"
        batchStetas += 1
    }
    @IBAction func numPadAcction3(_ sender: Any) {
        passCordNow += "3"
        batchStetas += 1
    }
    @IBAction func numPadAcction4(_ sender: Any) {
        passCordNow += "4"
        batchStetas += 1
    }
    @IBAction func numPadAcction5(_ sender: Any) {
        passCordNow += "5"
        batchStetas += 1
    }
    @IBAction func numPadAcction6(_ sender: Any) {
        passCordNow += "6"
        batchStetas += 1
    }
    @IBAction func numPadAcction7(_ sender: Any) {
        passCordNow += "7"
        batchStetas += 1
    }
    @IBAction func numPadAcction8(_ sender: Any) {
        passCordNow += "8"
        batchStetas += 1
    }
    @IBAction func numPadAcction9(_ sender: Any) {
        passCordNow += "9"
        batchStetas += 1
    }
    @IBAction func numPadAcctionBackSpace(_ sender: Any) {
        passCordNow = String(passCordNow.dropLast())
        batchStetas -= 1
        if batchStetas < 0 {
            batchStetas = 0
        }
    }
    func goNext(){
        DispatchQueue.main.sync {
        let passWordRepositoryViewController = self.storyboard?.instantiateViewController(withIdentifier: "PassWordRepositoryViewController") as! PassWordRepositoryViewController
        self.present(passWordRepositoryViewController, animated: true, completion: nil)
        }
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

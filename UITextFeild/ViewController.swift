//
//  ViewController.swift
//  UITextFeild
//
//  Created by D7703_18 on 2018. 3. 21..
//  Copyright © 2018년 D7703_18. All rights reserved.
//

import UIKit
//UITextField의 델리게이트를 사용하기위해 UITextFieldDelegate사용
class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var Hello: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate=self   //델리 게이트 연결
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func button(_ sender: Any) {
        Hello.text = "SISI " + textField.text!
        textField.text = ""
        textField.resignFirstResponder() //버튼을 실행시키면 키보드를 내린다
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("I pressed return key")
        Hello.text = "SISI " + textField.text!
        textField.text = ""
        textField.resignFirstResponder()
        //버튼을 실행시키면 키보드를 내린다
        return true
    }

}


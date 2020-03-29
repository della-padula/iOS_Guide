//
//  ViewController.swift
//  UserDefaultsExample
//
//  Created by 김태인 on 2020/03/29.
//  Copyright © 2020 김태인. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPhone: UITextField!
    
    @IBAction func onClickSaveButton(_ sender: Any) {
        self.saveDataToUserDefaults()
    }
    
    @IBAction func onClickLoadButton(_ sender: Any) {
        self.loadDataFromUserDefaults()
    }
    
    @IBOutlet weak var userInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    private func saveDataToUserDefaults() {
        if (self.tfName.text ?? "").isEmpty || (self.tfEmail.text ?? "").isEmpty || (self.tfPhone.text ?? "").isEmpty {
            self.showAlert(title: "모든 값을 입력해주세요.", content: "")
        } else {
            UserDefaults.standard.set(tfName.text!, forKey: "name")
            UserDefaults.standard.set(tfEmail.text!, forKey: "email")
            UserDefaults.standard.set(tfPhone.text!, forKey: "phone")
            
            self.showAlert(title: "저장 완료", content: "")
        }
    }
    
    private func loadDataFromUserDefaults() {
        guard let name = UserDefaults.standard.string(forKey: "name"), let email = UserDefaults.standard.string(forKey: "email"), let phone = UserDefaults.standard.string(forKey: "phone") else {
            self.showAlert(title: "모든 정보가 올바르게 저장되지 않았습니다.", content: "")
            self.userInfoLabel.text = "오류 발생"
            
            return
        }
        
        self.userInfoLabel.text = "이름 : \(name)\n이메일 : \(email)\n전화번호 : \(phone)"
    }
    
    private func showAlert(title: String?, content: String?) {
        let alert = UIAlertController(title: title, message: content, preferredStyle: UIAlertController.Style.alert)

        let okAction = UIAlertAction(title: "OK", style: .default, handler : nil )
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }

}


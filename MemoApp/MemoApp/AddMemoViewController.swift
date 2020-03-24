//
//  AddMemoViewController.swift
//  MemoApp
//
//  Created by 김태인 on 2020/03/25.
//  Copyright © 2020 김태인. All rights reserved.
//

import Foundation
import UIKit

class AddMemoViewController: UIViewController {
    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfContent: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "등록", style: .done, target: nil, action: #selector(onClickFinish))
    }

    @objc
    func onClickFinish() {
        
        if (tfTitle.text ?? "").isEmpty || tfContent.text.isEmpty {
            self.showAlert(title: "제목 혹은 내용을 입력해주세요.", content: "")
        } else {
            MemoData.memoList.append(Memo(title: tfTitle.text!, content: tfContent.text))
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func showAlert(title: String, content: String) {
        let alert = UIAlertController(title: title, message: content, preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler : nil )
        
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
    }
}

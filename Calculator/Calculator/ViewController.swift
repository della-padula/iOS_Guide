//
//  ViewController.swift
//  Calculator
//
//  Created by 김태인 on 2020/03/24.
//  Copyright © 2020 김태인. All rights reserved.
//

import UIKit

enum Operation {
    case plus
    case minus
    case multiply
    case division
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func onClickPlus(_ sender: Any) {
        self.lblResult.text = self.doOperation(num1: tfNum1.text ?? "", num2: tfNum2.text ?? "", operation: .plus)
    }
    
    @IBAction func onClickMinus(_ sender: Any) {
        self.lblResult.text = self.doOperation(num1: tfNum1.text ?? "", num2: tfNum2.text ?? "", operation: .minus)
    }
    
    @IBAction func onClickMultiply(_ sender: Any) {
        self.lblResult.text = self.doOperation(num1: tfNum1.text ?? "", num2: tfNum2.text ?? "", operation: .multiply)
    }
    
    @IBAction func onClickDivide(_ sender: Any) {
        self.lblResult.text = self.doOperation(num1: tfNum1.text ?? "", num2: tfNum2.text ?? "", operation: .division)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func doOperation(num1: String, num2: String, operation: Operation) -> String {
        if num1.isEmpty || num2.isEmpty {
            return "값을 입력해주세요."
        }
        
        switch operation {
        case .plus:
            return "\(Int(num1)!) + \(Int(num2)!) = \(Int(num1)! + Int(num2)!)"
        case .minus:
            return "\(Int(num1)!) - \(Int(num2)!) = \(Int(num1)! - Int(num2)!)"
        case .multiply:
            return "\(Int(num1)!) * \(Int(num2)!) = \(Int(num1)! * Int(num2)!)"
        case .division:
            return "\(Int(num1)!) / \(Int(num2)!) = \(Int(num1)! / Int(num2)!)"
        }
    }
    
}


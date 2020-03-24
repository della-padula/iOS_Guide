//
//  DetailViewController.swift
//  MemoApp
//
//  Created by 김태인 on 2020/03/25.
//  Copyright © 2020 김태인. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    var memo: Memo?
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblContent: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setContent()
    }
    
    private func setContent() {
        self.lblTitle.text = memo?.title
        self.lblContent.text = memo?.content
    }
}

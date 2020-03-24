//
//  MemoCell.swift
//  MemoApp
//
//  Created by 김태인 on 2020/03/25.
//  Copyright © 2020 김태인. All rights reserved.
//

import UIKit

class MemoCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblContent: UILabel!
    
    var memo: Memo? {
        didSet {
            self.lblTitle.text = memo!.title
            self.lblContent.text = memo!.content
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

//
//  MemoData.swift
//  MemoApp
//
//  Created by 김태인 on 2020/03/25.
//  Copyright © 2020 김태인. All rights reserved.
//

import Foundation

struct Memo {
    var title: String
    
    var content: String
}

class MemoData {
    public static var memoList: [Memo] = [Memo]()
}

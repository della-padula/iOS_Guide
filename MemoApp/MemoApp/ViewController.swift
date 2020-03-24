//
//  ViewController.swift
//  MemoApp
//
//  Created by 김태인 on 2020/03/24.
//  Copyright © 2020 김태인. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var memoListview: UITableView!
    @IBOutlet weak var errorView: UIView!
    
    @IBAction func onClickAdd(_ sender: Any) {
        let vc = self.storyboard!.instantiateViewController(identifier: "addMemoVC") as! AddMemoViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setErrorView()
        self.memoListview.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.memoListview.delegate = self
        self.memoListview.dataSource = self
        self.setErrorView()
    }
    
    private func setErrorView() {
        if MemoData.memoList.count < 1 {
            self.errorView.isHidden = false
        } else {
            self.errorView.isHidden = true
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MemoData.memoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memoCell") as! MemoCell
        
        cell.memo = MemoData.memoList[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard!.instantiateViewController(identifier: "detailVC") as! DetailViewController
        vc.memo = MemoData.memoList[indexPath.row]
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


//
//  WBHomeController.swift
//  微博
//
//  Created by IVT502 on 2017/2/10.
//  Copyright © 2017年 IVT. All rights reserved.
//

import UIKit

private let cellID = "HomeCellID"

class WBHomeController: WBBaseViewController {

    lazy var dataList = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func loadData() {
        for i in 0..<15 {
            var imageTitle: String = ""
            if i < 5 {
                imageTitle = "beijing.jpg"
            }else if i > 5 && i < 10{
                imageTitle = "ren"
            }else{
                imageTitle = "zhuanshi"
            }
            
            let dict = ["title":"标题：\(i.description)","subTitle":"标题说明（子标题）：\(i.description+"1")","imageTitle":imageTitle]
            dataList.insert(dict, at: 0)
        }
    }
    
}

extension WBHomeController{
    fileprivate func setupUI(){
        tableView?.register(WBHomeCell.classForCoder(), forCellReuseIdentifier: WBHomeCell.cellID())
        tableView?.separatorStyle = .none
    }
}

extension WBHomeController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = WBHomeCell(style: .default, reuseIdentifier: WBHomeCell.cellID())
        cell.dict = self.dataList[indexPath.row]
//        cell.dataStr = "\(indexPath.row.description)"
//        cell.cellForStr(cellStr: self.dataList[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return WBHomeCell.cellHeight()
    }
}

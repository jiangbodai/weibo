//
//  WBBaseViewController.swift
//  微博
//
//  Created by IVT502 on 2017/2/8.
//  Copyright © 2017年 IVT. All rights reserved.
//

import UIKit

class WBBaseViewController: UIViewController {

    var tableView : UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        loadData()
    }
    ///mark 加载数据
    func loadData() {
        
    }
}

///设置界面
extension WBBaseViewController {

    fileprivate func setUpUI(){
        setupTableView()
        setupBgColor()
    }
    
    
    private func setupBgColor(){
        view.backgroundColor = UIColor.init(red: CGFloat(arc4random_uniform(255))/255, green: CGFloat(arc4random_uniform(255))/255, blue: CGFloat(arc4random_uniform(255))/255, alpha: 1);
    }
    
    private func setupTableView(){
        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView?.dataSource = self;
        tableView?.delegate = self;
        view.insertSubview(tableView!, belowSubview: (navigationController?.navigationBar)!)
    }
}

///数据源方法和代理方法
extension WBBaseViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}


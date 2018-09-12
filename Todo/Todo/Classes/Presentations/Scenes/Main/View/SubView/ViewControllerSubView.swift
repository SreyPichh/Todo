//
//  ViewControllerSubView.swift
//  Todo
//
//  Created by ken.phanith on 2018/09/12.
//  Copyright © 2018 Pich. All rights reserved.
//

import Foundation
import SnapKit
import UIKit
import Then

class ViewControllerSubView: UIViewController {
    
    let label = UILabel().then {
        $0.text = "To Do List"
    }
    
    let list = UITableView().then {
        $0.layer.borderWidth = 0.5
        $0.layer.borderColor = UIColor.gray.cgColor
    }
    let addBtn = UIButton().then {
        $0.setTitle("+", for: .normal)
        $0.setTitleColor(UIColor.black, for: .normal)
        $0.backgroundColor = UIColor.blue
    }
    let header = UIView().then {
        $0.backgroundColor = UIColor.gray
    }
    
    
    func updateConstrain() {
        self.label.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(40)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(50)
        }
        self.addBtn.snp.makeConstraints { (make) in
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.right.equalToSuperview()
            make.top.equalToSuperview()
    
        }
        self.list.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalToSuperview()
            make.top.equalTo(self.label.snp.bottom)
        }
        self.header.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalTo(150)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(50)
        }
    }
}

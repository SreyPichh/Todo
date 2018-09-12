//
//  AddListViewControllerSubView.swift
//  Todo
//
//  Created by ken.phanith on 2018/09/12.
//  Copyright © 2018 Pich. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import Then

class AddListViewControllerSubView {
    
    let cancel = UILabel().then {
        $0.text = "Cancel"
        $0.textColor = UIColor.blue
    }
    
    let label = UILabel().then {
        $0.text = "Add New List"
        $0.textColor = UIColor.black
        
    }
    let header = UIView().then {
        $0.backgroundColor = UIColor.gray
    }
    
    let taskInput = UITextField().then{
        $0.placeholder = "Add new task..."
        $0.layer.borderColor = UIColor.gray.cgColor
        $0.layer.cornerRadius = 1.0
        $0.textColor = UIColor.white
    }
    
    let addBtn = UIButton().then {
        $0.setTitle("Add New", for: .normal)
        $0.backgroundColor = UIColor.blue
    }
    
    func updatedConstraint() {
        self.cancel.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(50)
            make.left.equalToSuperview()
            make.top.equalToSuperview()
        }
        self.header.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalTo(40)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(50)
        }
        self.label.snp.makeConstraints { (make) in
            make.width.equalTo(150)
            make.height.equalTo(40)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(50)
        }
        self.taskInput.snp.makeConstraints { (make) in
            make.width.equalTo(200)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.top.equalTo(self.header.snp.bottom)
            
        }
        self.addBtn.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(30)
            make.centerX.equalToSuperview()
            make.top.equalTo(self.taskInput.snp.bottom)
        }
    }
    
    
    
}

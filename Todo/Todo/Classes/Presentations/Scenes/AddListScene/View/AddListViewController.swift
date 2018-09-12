//
//  AddListViewController.swift
//  Todo
//
//  Created by ken.phanith on 2018/09/12.
//  Copyright © 2018 Pich. All rights reserved.
//

import Foundation
import UIKit

class AddListViewController: UIViewController {
    var subView: AddListViewControllerSubView = AddListViewControllerSubView()
}

extension AddListViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.subView.header)
        self.view.addSubview(self.subView.label)
        self.subView.header.addSubview(self.subView.cancel)
        self.view.addSubview(self.subView.taskInput)
        self.view.addSubview(self.subView.addBtn)
        self.view.backgroundColor = UIColor.white
    }
    
    override func viewDidLayoutSubviews() {
        self.subView.updatedConstraint()
    }
}

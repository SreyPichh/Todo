//
//  ViewController.swift
//  Todo
//
//  Created by ken.phanith on 2018/09/12.
//  Copyright © 2018 Pich. All rights reserved.
//

import UIKit
import RxCocoa
import ReactorKit
import RxSwift

class ViewController: UIViewController {
    
    var subView: ViewControllerSubView = ViewControllerSubView()
    var disposeBag: DisposeBag = DisposeBag()
    
    var router: ViewControllerRouter?
}

extension ViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.router = ViewControllerRouter(viewController: self)
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.subView.header)
        self.view.addSubview(self.subView.label)
//        self.view.addSubview(self.subView.addBtn)
        self.subView.header.addSubview(self.subView.addBtn)
        self.view.addSubview(self.subView.list)
        
        self.reactor = ViewControllerReactor(router: self.router!)
        
        
    }
    
    override func viewDidLayoutSubviews() {
        self.subView.updateConstrain()
    }
    
}

extension ViewController: StoryboardView{

    func bind(reactor: ViewControllerReactor) {
        self.subView.addBtn.rx.tap
            .map{Reactor.Action.addList}
            .bind(to: reactor.action)
            .disposed(by: self.disposeBag)
        }
    }
    

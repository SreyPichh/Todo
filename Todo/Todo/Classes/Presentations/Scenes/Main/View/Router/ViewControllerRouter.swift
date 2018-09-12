//
//  ViewControllerRouter.swift
//  Todo
//
//  Created by ken.phanith on 2018/09/12.
//  Copyright © 2018 Pich. All rights reserved.
//

import Foundation

final class ViewControllerRouter {
    weak var viewController: ViewController?
    
    init(viewController: ViewController) {
        self.viewController = viewController
    }
    
    func navigateToAddList() -> Void {
        self.viewController?.present(AddListViewController(), animated: true, completion: nil)
    }
}

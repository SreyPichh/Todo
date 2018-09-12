//
//  ViewControllerReactor.swift
//  Todo
//
//  Created by ken.phanith on 2018/09/12.
//  Copyright © 2018 Pich. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
import ReactorKit

class ViewControllerReactor: Reactor {
    enum Action {
        case addList
    }
    enum Mutation {
       // case listValue
    }
    
    var initialState: ViewControllerReactor.State
    
    struct State {
        var list: String
    }
    
    var router: ViewControllerRouter
    
    init(router: ViewControllerRouter) {
        self.router = router
        self.initialState = State(list: "")
    }
    func mutate(action: ViewControllerReactor.Action) -> Observable<ViewControllerReactor.Mutation> {
        switch action {
        case .addList:
            // Router
            self.router.navigateToAddList()
            return Observable.empty()
        }
    }
    func reduce(state: ViewControllerReactor.State, mutation: ViewControllerReactor.Mutation) -> ViewControllerReactor.State {
        return state
        }
    
}

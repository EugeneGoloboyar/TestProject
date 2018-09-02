//
//  LoginAssembler.swift
//  TestProject
//
//  Created by Eugene Goloboyar on 28.08.2018.
//  Copyright © 2018 Eugene Goloboyar. All rights reserved.
//

import Foundation

struct LoginAssembler {
    
    let userSessionService: UserSessionService
    let model: LoginInputModel
    
    func assembleLoginSceneWithDelegate(delegate: LoginRouterDelegate) -> NewLoginVC {
        let vc = NewLoginVC.instantiateFromStoryboardId(.login)
        let router = LoginRouter(viewController: vc)
        router.delegate = delegate
        let presenter = LoginPresenter(userSessionService: userSessionService, model: model)
        vc.presenter = presenter
        vc.router = router
        
        return vc
    }
}

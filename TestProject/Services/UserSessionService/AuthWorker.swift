//
//  AuthWorker.swift
//  TestProject
//
//  Created by Eugene Goloboyar on 02.09.2018.
//  Copyright © 2018 Eugene Goloboyar. All rights reserved.
//

import Foundation

enum AuthFlow {
    case existingUser
    case login(LoginInputModel)
}

typealias AuthCompletionSuccess = (_ withFlow: AuthFlow) -> ()
typealias AuthCompletionFailure = (_ withFlow: AuthFlow, _ errorText: String) -> ()

protocol AuthUserProtocol {
    func authUserWithFlow(_ flow: AuthFlow,
                          success: @escaping AuthCompletionSuccess,
                          failure: @escaping AuthCompletionFailure)
}

final class AuthWorker {
    
    // MARK: - Vars
    
    private let networkService: NetworkService = ServiceLocator.inject()
    private let appCoordinator: ApplicationCoordinator
    
    // MARK: - Initialization
    
    init(appCoordinator: ApplicationCoordinator) {
        self.appCoordinator = appCoordinator
    }
    
    // MARK: - Public
    
    func authUserWithFlow(_ flow: AuthFlow,
                          success: @escaping AuthCompletionSuccess,
                          failure: @escaping AuthCompletionFailure) {
        switch flow {
        case .existingUser:
            break
        case .login(let model):
            break
        }
    }
}

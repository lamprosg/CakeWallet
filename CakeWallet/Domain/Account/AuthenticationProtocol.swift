//
//  AuthenticationProtocol.swift
//  CakeWallet
//
//  Created by Cake Technologies 30.01.2018.
//  Copyright © 2018 Cake Technologies. 
//

import PromiseKit

protocol AuthenticationProtocol: BiometricAuthenticationProtocol {
    func authenticate(password: String) -> Promise<Void>
    func login(withPassword password: String) -> Promise<Void>
}

protocol BiometricAuthenticationProtocol {
    func biometricAuthenticationIsAllow() -> Bool
    func biometricAuthentication() -> Promise<Void>
}

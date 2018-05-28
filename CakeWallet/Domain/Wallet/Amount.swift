//
//  Amount.swift
//  Wallet
//
//  Created by Cake Technologies 11/26/17.
//  Copyright © 2017 Cake Technologies. 
//

import Foundation

protocol Amount {
    var value: UInt64 { get }
    func formatted() -> String
}


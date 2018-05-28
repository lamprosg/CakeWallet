//
//  Dictionary+IntIndex.swift
//  Wallet
//
//  Created by Cake Technologies 09.11.17.
//  Copyright © 2017 Cake Technologies. 
//

import Foundation

extension Dictionary {
    subscript(i:Int) -> (key:Key,value:Value) {
        get {
            return self[index(startIndex, offsetBy: i)]
        }
    }
}

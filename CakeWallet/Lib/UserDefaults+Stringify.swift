//
//  UserDefaults+Stringify.swift
//  CakeWallet
//
//  Created by Cake Technologies 27.01.2018.
//  Copyright © 2018 Cake Technologies. 
//

import Foundation

extension UserDefaults {
    func set(_ value: Any?, forKey key: Stringify) {
        self.set(value, forKey: key.stringify())
    }
    
    func string(forKey key: Stringify) -> String? {
        return self.string(forKey: key.stringify())
    }
    
    func bool(forKey key: Stringify) -> Bool {
        return self.bool(forKey: key.stringify())
    }
    
    func integer(forKey key: Stringify) -> Int {
        return self.integer(forKey: key.stringify())
    }
}

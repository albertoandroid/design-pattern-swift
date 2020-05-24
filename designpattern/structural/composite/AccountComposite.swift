//
//  AccountComposite.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 22/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class AccountComposite: AccountComponent {
    
    var childAccounts = [AccountComponent]()
    
    func addAccount(account: AccountComponent){
        childAccounts.append(account)
    }
    
    func removeAccount(account: AccountComposite){
        
    }
    
    func showAccontName() {
        for child in childAccounts{
            child.showAccontName()
        }
    }
    
    
}

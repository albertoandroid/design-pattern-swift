//
//  CreditDecorator.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 22/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class CreditDecorator: CreditComponent {
    var decorated: CreditComponent
    
    init(decorated: CreditComponent) {
        self.decorated = decorated
    }
    
    func showCredit() {
        self.decorated.showCredit()
    }
}

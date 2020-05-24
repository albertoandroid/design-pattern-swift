//
//  SecureDecorator.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 22/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class SecureDecorator: CreditDecorator {
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }
    
    override func showCredit() {
        decorated.showCredit()
        configSecure()
    }
    
    func configSecure(){
        print("Tarjeta configurada con pago Secure")
    }
}

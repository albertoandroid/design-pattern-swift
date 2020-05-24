//
//  InternationalPaymentDecorator.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 22/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class InternationalPaymentDecorator: CreditDecorator{
    
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }
    
    override func showCredit() {
        decorated.showCredit()
        configInternationalPayment()
    }
    
    func configInternationalPayment(){
        print("Tarjeta configurada con pago interntacional")
    }
    
    
}

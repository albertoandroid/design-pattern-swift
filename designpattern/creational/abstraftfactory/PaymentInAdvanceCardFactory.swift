//
//  PaymentInAdvanceCardFactory.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 15/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class PaymentInAdvanceCardFactory: AbstractFatory {
    func createPayment() -> PaymentAF {
        return CardPaymentAF()
    }
    
    func createMethod() -> Method {
        return PaymentInAdvanceMethod()
    }
    
    
}

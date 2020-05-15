//
//  MontlyGoogleFactory.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 15/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class MontlyGoogleFactory: AbstractFatory {
    func createPayment() -> PaymentAF {
        return GooglePaymentAF()
    }
    
    func createMethod() -> Method {
        return MontlyMethod()
    }
    
    
}

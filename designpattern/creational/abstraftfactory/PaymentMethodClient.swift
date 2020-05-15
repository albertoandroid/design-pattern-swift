//
//  PaymentMethodClient.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 15/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class PaymentMethodClient {
    static func codigoCliente(factory: AbstractFatory){
        let payment = factory.createPayment()
        let method = factory.createMethod()
        
        payment.doPayment()
        method.calculatePayment()
    }
}

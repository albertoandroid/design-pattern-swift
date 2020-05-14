//
//  PaymentFactory.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 14/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class PaymentFactory{
    static func buildPayment(typePayment: TypePayment)->Payment{
        switch typePayment {
        case .GOOGLE:
            return GooglePayment()
            
        case .CARD:
            return CardPayment()
        
        }
    }
}

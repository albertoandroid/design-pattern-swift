//
//  UnsecureCreditCard.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 21/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class UnsecureCreditCard: CreditCardProtocol {
    func makePayment() {
        print("Pago realizado Sin Seguridad")
    }
    
    
}

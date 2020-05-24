//
//  CreditCardB.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 21/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class CreditCardB {
    let creditCard: CreditCardProtocol
    init(creditCard: CreditCardProtocol) {
        self.creditCard = creditCard
    }
    func makePayment(){}
}

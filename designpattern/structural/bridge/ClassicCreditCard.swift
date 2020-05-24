//
//  ClassicCreditCard.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 21/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class ClassicCreditCard: CreditCardB {
    override init(creditCard: CreditCardProtocol) {
        super.init(creditCard: creditCard)
    }
    override func makePayment() {
        creditCard.makePayment()
    }
}

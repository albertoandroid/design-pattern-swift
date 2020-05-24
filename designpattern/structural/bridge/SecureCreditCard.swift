//
//  SecureCreditCard.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 21/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class SecureCreditCard: CreditCardProtocol {
    func makePayment() {
        print("Pago realizado con Protocolo de Máxima Seguridad")
    }
}

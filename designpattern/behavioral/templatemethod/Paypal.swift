//
//  Paypal.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 18/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class Paypal: PaymentTemplate {
    func initialize() {
        print("Inicializando el pago con Paypal")
    }
    
    func startPayment() {
        print("Realizando el pago a través de los servidores de Paypal")
    }
    
    func endPayment() {
        print("Finalizando el pago a través de los servidores de Paypal")
    }
}

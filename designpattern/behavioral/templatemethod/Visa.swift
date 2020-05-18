//
//  Visa.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 18/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class Visa: PaymentTemplate {
    func initialize() {
        print("Inicializando el pago con Visa")
    }
    
    func startPayment() {
        print("Realizando el pago a través de los servidores de Visa")
    }
    
    func endPayment() {
        print("Finalizando el pago a través de los servidores de Visa")
    }
}


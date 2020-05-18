//
//  PaymentTemplate.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 18/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

protocol PaymentTemplate {
    func initialize()
    func startPayment()
    func endPayment()
}

extension PaymentTemplate{
    func makePayment(){
        initialize()
        startPayment()
        endPayment()
    }
}

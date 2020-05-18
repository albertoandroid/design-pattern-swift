//
//  ClassicCreditCardVisitor.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 18/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class ClassicCreditCardVisitor: CreditCardVisitor {
    func flightsOffer(flightsOffer: FlightsOffer) {
        print("Descuento 5% en Vuelos con tu tarjeta clasica")
    }
    
    func gassolineOffer(gassolineOffer: GassolineOffer) {
        print("Descuento 3% en Gasolina con tu tarjeta clasica")
    }
    
    
}

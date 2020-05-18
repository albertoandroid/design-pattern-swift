//
//  BlackCreditCardVisitor.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 18/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class BlackCreditCardVisitor: CreditCardVisitor {
    func gassolineOffer(gassolineOffer: GassolineOffer) {
        print("Descuento 10% en Gasolina con tu tarjeta Black")
    }
    
    func flightsOffer(flightsOffer: FlightsOffer) {
        print("Descuento 25% en Vuelos con tu tarjeta Black")
    }
    
    
}

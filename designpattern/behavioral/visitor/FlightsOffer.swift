//
//  FlightsOffer.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 18/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class FlightsOffer: OffertElement {
    
    func accept(visitor: CreditCardVisitor) {
        visitor.flightsOffer(flightsOffer: self)
    }
}

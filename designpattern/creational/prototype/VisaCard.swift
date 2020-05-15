//
//  VisaCard.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 15/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class VisaCard: PrototypeCard{
    
    var cardName = "VISA"
    
    func copy() -> Any{
        return copy(with: nil)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        guard let prototype = super.copy(with: zone) as? VisaCard else{
            return VisaCard()
        }
        prototype.cardName = cardName
        print("Clonado tarjeta Visa")
        return prototype
    }
    
    
}

//
//  Card.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 15/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class Card {
    private var cardType: String = ""
    private var number: String = ""
    private var expired: Int =  0
    
    func showCard(){
        print("Tarjeta \(cardType) - \(number) - \(expired)")
    }
    
    class CardBuilder {
        private var innerCard = Card()
        
        func cardType(cardType: String)->CardBuilder{
            innerCard.cardType = cardType
            return self
        }
        
        func number(number: String)-> CardBuilder{
            innerCard.number = number
            return self
        }
        
        func expires(expires: Int)-> CardBuilder{
            innerCard.expired = expires
            return self
        }
        
        func build()->Card{
            return innerCard
        }
    }
}

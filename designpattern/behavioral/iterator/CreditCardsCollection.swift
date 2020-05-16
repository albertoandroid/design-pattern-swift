//
//  CreditCardsCollection.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class CreditCardsCollection {
    
    var items = [CreditCard]()
    
    func append(_ item: CreditCard){
        self.items.append(item)
    }
}

extension CreditCardsCollection: Sequence{
    

    func makeIterator() -> CreditCardsIterator {
        return CreditCardsIterator(cards: self)
    }
    
}

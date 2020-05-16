//
//  CreditCardsIterator.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class CreditCardsIterator: IteratorProtocol {
    
    private var position = 0
    let cards: CreditCardsCollection
    
    init(cards: CreditCardsCollection) {
        self.cards = cards
    }
    
    func next() -> CreditCard? {
        defer {position += 1}
        return cards.items.count > position ? cards.items[position] : nil
    }
    
}

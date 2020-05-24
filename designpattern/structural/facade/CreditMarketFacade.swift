//
//  CreditMarketFacade.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 23/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class CreditMarketFacade {
    var black = BlackModule()
    var gold = GoldModule()
    var silver = SilverModule()
    
    func showCreditBlack() {
        black.showCredit()
    }
    
    func showCreditGold() {
        gold.showCredit()
    }
    
    func showCreditSilver(){
        silver.showCredit()
    }
}

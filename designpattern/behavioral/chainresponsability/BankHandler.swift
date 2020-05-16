//
//  BankHandler.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class BankHandler: ApprovedLoanHandler {
    
    private var next: ApprovedLoanHandler?
    
    func setNext(handler: ApprovedLoanHandler) {
        next = handler
    }
    
    func getNext() -> ApprovedLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        let gold = GoldHandler()
        self.setNext(handler: gold)
        
        let platinium = PlatiniumHandler()
        gold.setNext(handler: platinium)
        
        let black = BlackHandler()
        platinium.setNext(handler: black)
        
        next?.creditCardRequest(totalLoan: totalLoan)
    }
    
    
    
    
    
    
}

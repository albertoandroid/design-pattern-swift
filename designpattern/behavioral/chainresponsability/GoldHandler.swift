//
//  GoldHandler.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class GoldHandler: ApprovedLoanHandler {
    
    private var next: ApprovedLoanHandler?
    
    func setNext(handler: ApprovedLoanHandler) {
        next = handler
    }
    
    func getNext() -> ApprovedLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        if(totalLoan <= 10000){
            print("Esta solicitud de tarjeta de credito la maneja la Clase Gold Handler")
        }else{
            next!.creditCardRequest(totalLoan: totalLoan)
        }
    }
    
    
}

//
//  CreditCardDesactivateCommand.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class CreditCardDesactivateCommand: Command {
    
    var creditCardReceiver: CreditCardReceiver
    
    init(creditCardReceiver: CreditCardReceiver){
        self.creditCardReceiver = creditCardReceiver
    }
    
    func execute() {
        creditCardReceiver.desactivate()
        creditCardReceiver.sendSMSToCustomerDesactivate()
    }
}

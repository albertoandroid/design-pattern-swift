//
//  CreditCardInvoker.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class CreditCardInvoker {
    private var command: Command?
    
    func setCommand(command: Command){
        self.command = command
    }
    
    func run(){
        command?.execute()
    }
}

//
//  Colleague.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class Colleague {
    
    let mediator: Mediator
    
    init(m: Mediator) {
        self.mediator = m
    }
    
    func send(message: String){}
    func messageReceived(message: String){}
}

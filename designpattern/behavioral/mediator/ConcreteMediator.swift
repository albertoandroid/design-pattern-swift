//
//  ConcreteMediator.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class ConcreteMediator: Mediator {
    var user1: ConcreteColleague1?
    var user2: ConcreteColleague2?
    
    func setColleague1(colleague1: ConcreteColleague1){
        user1 = colleague1
    }
    
    func setColleague2(colleague2: ConcreteColleague2){
        user2 = colleague2
    }
    
    func send(message: String, colleague: Colleague) {
        if(colleague === user1){
            user2?.messageReceived(message: message)
        }else if(colleague === user2){
            user1?.messageReceived(message: message)
        }
        
    }
}

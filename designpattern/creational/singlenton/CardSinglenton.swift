//
//  CardSinglenton.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 15/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class CardSinglenton {
    static var shared = CardSinglenton()
    private init(){}
    func doSomething(){
        print("Haciendo trabajo de la clase Singlenton")
    }
}

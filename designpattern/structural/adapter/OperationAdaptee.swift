//
//  OperationAdaptee.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 21/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class OperationAdaptee {
    var a: Int
    var b: Int
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    func sum()->Int{
        return a + b
    }
}

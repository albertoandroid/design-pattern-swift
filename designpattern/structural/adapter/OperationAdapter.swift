//
//  OperationAdapter.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 21/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class OperationAdapter: OperationTarget {
    
    let adaptee: OperationAdaptee
    
    init(adaptee: OperationAdaptee) {
        self.adaptee = adaptee
    }
    
    var getSum: String{
        return String(self.adaptee.sum())
    }
    
    
}

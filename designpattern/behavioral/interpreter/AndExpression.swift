//
//  AndExpression.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class AndExpression: Expression {
    
    var expression1: Expression
    var expression2: Expression
    
    init(expression1: Expression, expression2: Expression) {
        self.expression2 = expression2
        self.expression1 = expression1
    }
    
    func interpret(context: String) -> Bool {
        return expression1.interpret(context: co)
    }
    
    
}

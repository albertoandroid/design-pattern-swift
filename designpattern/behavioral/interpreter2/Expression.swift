//
//  Expression.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

protocol Expression {
    func interpret(context: String)->Bool
}

//
//  Context.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 18/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class Context {
    
    var strategyTextFormatter: StrategyTextFormatter
    init(strategyTextFormatter: StrategyTextFormatter) {
        self.strategyTextFormatter = strategyTextFormatter
    }
    
    func publishText(text: String){
        strategyTextFormatter.format(text: text)
    }
}

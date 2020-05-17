//
//  Carataker.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class Carataker {
    private var estados = [ArticleMemento]()
    
    func addMemento(memento: ArticleMemento){
        estados.append(memento)
    }
    
    func getMemento(index: Int)-> ArticleMemento{
        return estados[index]
    }
}

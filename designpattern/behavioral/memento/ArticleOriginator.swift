//
//  ArticleOriginator.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

struct ArticleOriginator {
    var id: Int
    var title: String
    var text: String
    
    func createMemento()-> ArticleMemento{
        let memento = ArticleMemento(id: id, title: title, text: text)
        return memento
    }
    
    mutating func restore(memento: ArticleMemento){
        self.id = memento.id
        self.text = memento.text
        self.title = memento.title
    }
}

//
//  EnemyFactory.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 23/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class EnemyFactory {
    
    private var enemies = [String: Enemy]()
    
    func getEnemy(type: String)->Enemy{
        var enemy: Enemy
        if(enemies[type] != nil){
            enemy = enemies[type]!
        }else{
            switch type {
            case "Private":
                print("Solado Creado")
                enemy = Private()
            case "Detective":
                print("Detective Creado")
                enemy = Detective()
            default:
                enemy = Detective()
            }
            enemies[type] = enemy
        }
        return enemy
    }
}

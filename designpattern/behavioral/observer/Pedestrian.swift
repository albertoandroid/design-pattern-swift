//
//  Pedestrian.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class Pedestrian: Observer {
    
    func update(trafficLight: TrafficLight) {
        if(trafficLight.status as AnyObject === "CAR_RED" as AnyObject){
            print("Semaro peaton Verde -> Peaton SI puede pasar")
        }else{
            print("Semaro peaton Rojo -> Peaton NO puede pasar")
        }
    }
}

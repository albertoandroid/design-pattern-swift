//
//  Car.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class Car: Observer {
    
    func update(trafficLight: TrafficLight) {
        if(trafficLight.status as AnyObject === "CAR_RED" as AnyObject){
            print("Semaro coche Rojo -> Coche NO puede pasar")
        }else{
            print("Semaro coche Verde -> Coche SI puede pasar")
        }
    }
    
    
}

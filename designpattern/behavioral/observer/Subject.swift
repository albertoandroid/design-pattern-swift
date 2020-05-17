//
//  Subject.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 17/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

protocol Subject {
    func attach(o: Observer)
    func detacht(o: Observer)
    func notifyUpdate(trafficLight: TrafficLight)
}

//
//  CreditCardReceiver.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 16/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import Foundation

class CreditCardReceiver {
    func sendPINNumberToCustomer(){
        print("El pin number ha sido enviado al cliente")
    }
    
    func sendSMSToCustomerActive(){
        print("Enviado SMS al cliente informando que su tarjeta ha sido activada.")
    }
    
    func activate(){
        print("La tarjeta ha sido activada")
    }
    
    func desactivate(){
        print("La tarjeta ha sido desactivada")
    }
    
    func sendSMSToCustomerDesactivate(){
        print("Enviado SMS al cliente informando que su Tarjeta ha sido desactivada")
    }
}

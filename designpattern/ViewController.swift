//
//  ViewController.swift
//  designpattern
//
//  Created by Alberto Palomar Robledo on 14/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //testFactoryMethod()
        //testAbstractFactory()
        testBuilder()
    }
    
    func testBuilder(){
        var card: Card = Card.CardBuilder()
        .cardType(cardType: "VISA")
        .number(number: "1111 2222 3333 4444")
        .expires(expires: 2030)
        .build()
        card.showCard()
    }
    

    
    func testAbstractFactory(){
        PaymentMethodClient.codigoCliente(factory: MontlyGoogleFactory())
        
        PaymentMethodClient.codigoCliente(factory: PaymentInAdvanceCardFactory())
    }
    
    func testFactoryMethod(){
        var payment: Payment
        payment = PaymentFactory.buildPayment(typePayment: .GOOGLE)
        payment.doPayment()
    }


}


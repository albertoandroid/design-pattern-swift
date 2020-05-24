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
        //testBuilder()
        //testPrototype()
        //testSinglenton()
        //testChainOfResponsability()
        //testCommand()
        //testIntepreter()
        //testIterator()
        //testMediator()
        //testMemento()
        //testObserver()
        //testState()
        //testStrategy()
        //testTemplateMethod()
        //testVisitor()
        //testAdapter()
        //testBridge()
        //testComposite()
        //testDecorator()
        //testFacade()
        //testFlyweight()
        testProxy()
        
    }
    
    func testProxy(){
        let internet = ProxyInternet()
        internet.connectTo(url: "udemy.com")
        internet.connectTo(url: "twitter.com")
    }
    
    
    func testFlyweight(){
        let enemyFactory = EnemyFactory()
        for _ in 0...10{
            let enemy = enemyFactory.getEnemy(type: getRandomEnemyType())
            enemy.setWeapon(weapon: getRandonWeapon())
            enemy.lifePoints()
        }
    }
    
    let enemyType = ["Private", "Detective"]
    let weapon = ["Fusil", "Revolver", "Pistola" , "9mm"]
    func getRandomEnemyType()->String{
        let number = Int.random(in: 0 ..< enemyType.count)
        return enemyType[number]
    }
    func getRandonWeapon()->String{
        let number = Int.random(in: 0 ..< weapon.count)
        return weapon[number]
    }
    
    func testFacade(){
        let facade = CreditMarketFacade()
        facade.showCreditGold()
        facade.showCreditSilver()
        facade.showCreditBlack()
    }
    
    func testDecorator(){
        let blackInternationalPayment = InternationalPaymentDecorator(decorated: BlackCreditComponent())
        print("-----Tarjeta Black Configurada-----")
        blackInternationalPayment.showCredit()
        
        let goldSecurePayment = SecureDecorator(decorated: GoldCreditComponent())
        print("-----Tarjeta Gold Configurada-----")
        goldSecurePayment.showCredit()
    }
    
    func testComposite(){
        let savings = SavingsAccount()
        let current = CurrentAccount()
        let composite = AccountComposite()
        
        composite.addAccount(account: savings)
        composite.addAccount(account: current)
        
        composite.showAccontName()
    }
    
    func testBridge(){
        var classic = ClassicCreditCard(creditCard: UnsecureCreditCard())
        classic.makePayment()
        
        classic = ClassicCreditCard(creditCard: SecureCreditCard())
        classic.makePayment()
    }
    
    func testAdapter(){
        let adaptee = OperationAdaptee(a: 3, b: 4)
        if(adaptee.sum() == 7){
            print("Ok int")
        }
        let target = OperationAdapter(adaptee: adaptee)
        if(target.getSum == "7"){
            print("OK String")
        }
        print(target.getSum)
    }
    
    func testVisitor(){
        let oferta = GassolineOffer()
        oferta.accept(visitor: BlackCreditCardVisitor())
    }
    
    
    func testTemplateMethod(){
        let paymentMethodVisa = Visa()
        paymentMethodVisa.makePayment()
        
        let paymentMethodPaypal = Paypal()
        paymentMethodPaypal.makePayment()
    }
    
    
    func testStrategy(){
        let context = Context(strategyTextFormatter: CapitalStrategyTextFormatter())
        context.publishText(text: "este texto sera convertido a Mayusuculas a través de nuestro algoritmo")
        
        let contextLower = Context(strategyTextFormatter: LowerStrategyTextFormatter())
        contextLower.publishText(text: "este texto sera convertido a Minusculas a través de nuestro algoritmo")
    }
    
    func testState(){
        let context = MobileAlertStateContext()
        context.alert()
        context.alert()
        sleep(2)
        context.setState(state: Vibration())
        context.alert()
        context.alert()
        sleep(2)
        context.setState(state: Silent())
        context.alert()
        context.alert()
        
    }
    
    func testObserver(){
        let car = Car()
        let pedestrian = Pedestrian()
        var trafficLight = TrafficLight(status: "CAR_GREEN")
        let messaguePublisher = MessagePublisher()
        
        messaguePublisher.attach(o: car)
        messaguePublisher.attach(o: pedestrian)
        messaguePublisher.notifyUpdate(trafficLight: trafficLight)
        sleep(2)
        trafficLight.status = "CAR_RED"
        messaguePublisher.notifyUpdate(trafficLight: trafficLight)
    }
    
    func testMemento(){
        let carataker = Carataker()
        var article = ArticleOriginator(id: 1, title: "Memento", text: "Memento es una pelicula")
        
        carataker.addMemento(memento: article.createMemento())
        
        article.text = "Memento es una pelicula de Nolam protagonizada por Guy Pearce"
        print(article.text)
        
        carataker.addMemento(memento: article.createMemento())
        
        let memento1: ArticleMemento = carataker.getMemento(index: 0)
        let memento2: ArticleMemento = carataker.getMemento(index: 1)
        
        article.restore(memento: memento1)
        print(article.text)
        
        article.restore(memento: memento2)
        print(article.text)
        
    }
    
    func testMediator(){
        let mediator = ConcreteMediator()
        let user1 = ConcreteColleague1(m: mediator)
        let user2 = ConcreteColleague2(m: mediator)
        
        mediator.setColleague1(colleague1: user1)
        mediator.setColleague2(colleague2: user2)
        
        user1.send(message: "Hola como estas soy el Usuario 1")
        user2.send(message: "Estoy bien")
        
        
    }
    
    func testIterator(){
        let misTarjetas = CreditCardsCollection()
        misTarjetas.append(CreditCard(type: "Gold"))
        misTarjetas.append(CreditCard(type: "Black"))
        misTarjetas.append(CreditCard(type: "Platinium"))
        for card in misTarjetas{
            print(card.type)
        }
    }
    
    func testIntepreter(){
        let cero = TerminalExpression(text: "0")
        let uno = TerminalExpression(text: "1")
        
        let containsOneOrCero = OrExpression(expression1: cero, expression2: uno)
        
        print(containsOneOrCero.interpret(context: "cero"))
        print(containsOneOrCero.interpret(context: "0"))
        
        let containsOneAndCero = AndExpression(expression1: cero, expression2: uno)
        
        print(containsOneAndCero.interpret(context: "cero, 0"))
        print(containsOneAndCero.interpret(context: "0, 1"))
        
    }
    
    func testCommand(){
        let creditCard = CreditCardReceiver()
        
        let invoker = CreditCardInvoker()
        invoker.setCommand(command: CreditCardActivateCommand(creditCardReceiver: creditCard))
        
        invoker.run()
        
        invoker.setCommand(command: CreditCardDesactivateCommand(creditCardReceiver: creditCard))
        
        invoker.run()
    }
    
    func testChainOfResponsability(){
        let bank = BankHandler()
        bank.creditCardRequest(totalLoan: 10000000)
    }
    
    func testSinglenton(){
        let instancia1 = CardSinglenton.shared
        let instancia2 = CardSinglenton.shared
        
        if(instancia2 === instancia1){
            print("La instancia1 es la misma que la 2")
        }
        
        instancia1.doSomething()
    }
    
    func testPrototype(){
        let original = VisaCard(cardNumber: 1111, cardType: "Credit")
        guard let copy = original.copy() as? VisaCard else{
            return
        }
        print(original.cardName)
        print(copy.cardName)
        
        print(original.cardNumber)
        print(copy.cardNumber)

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


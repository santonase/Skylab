import UIKit

/*
 1. Створіть клас Матрос (Sailor), в якому буде ініціалізатор, одна властивість - ім'я матроса та один метод "introduce Myself". При виклику цього методу, в консоль буде виводитися повідомлення "Привіт, мене звуть *ім'я матроса*!"
 */

print("TASK-1")
class Sailor {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func introduceMySelf() {
        print("Привіт, мене звати \(self.name)!")
    }
}

var sailorFirst = Sailor(name: "Sailor First")
var sailorSecond = Sailor(name: "Sailor Second")

sailorFirst.introduceMySelf()
sailorSecond.introduceMySelf()

print(" ")
print("TASK-2")
/*
 2. Створіть клас Корабель, у якому буде ініціалізатор, дві властивості: назва корабля та масив "матроси". Додайте також функцію "introduceAll", яка виводитиме вітання від імені всіх матросів, після чого виводитиме повідомлення "Ми з корабля *ім'я корабля*"
 */

class Ship {
    var name: String
    var sailors: [Sailor]
    
    init(name: String, sailors: [Sailor]) {
        self.name = name
        self.sailors = sailors
    }
    
    func introduceAll() {
        for i in sailors {
            i.introduceMySelf()
        }
        print("Ми з корабля: \(self.name)")
    }
}

var ship = Ship(name: "SHIP_SHIP", sailors: [sailorFirst, sailorSecond])
ship.introduceAll()

print(" ")
print("TASK-3")

    /*
3. Через ініціалізатор створіть 5 екземплярів класу Матрос та клас Корабель, до якого передайте список створених матросів. Викличте функцію introduceAll. Ви повинні отримати в консолі вітання від імені всіх матросів та назву корабля
*/

var sailorOne = Sailor(name: "SailorOne")
var sailorTwo = Sailor(name: "SailorTwo")
var sailorThree = Sailor(name: "sailorThree")
var sailorFour = Sailor(name: "sailorFour")
var sailorFive = Sailor(name: "sailorFive")

var reallyShip = Ship(name: "reallyShip", sailors: [sailorOne, sailorTwo, sailorThree, sailorFour, sailorFive])
reallyShip.introduceAll()

print(" ")
print("TASK-4")
    /*
4. Створіть клас Titanic, дочірній від класу Ship. І клас TitanicSailor, дочірній від  Sailor. Нехай TitanicSailor матиме ту саму функцію introduseMyself, але повідомлення буде виводити англійською. Аналогічно клас Titanic, тільки нехай його функція introduceAll виводить на двох мовах: те ж повідомлення що і Ship, а потім - таке ж повідомлення англійською. Не змінюйте існуючі класи Ship та Sailor
*/

class Titanic: Ship {
    override func introduceAll() {
        super.introduceAll()
        print("We are from ship: \(self.name)")
    }
}

class TitanicSailor: Sailor {
    
    override func introduceMySelf() {
        print("Hi, my name is \(self.name)!")
    }
}

var titanicShip = Titanic(name: "titanicShip", sailors: [sailorOne, sailorTwo])
titanicShip.introduceAll()

var sailorOfTitanic = TitanicSailor(name: "sailorOfTitanic")
sailorOfTitanic.introduceMySelf()

print(" ")
print("TASK-5")


// 5. Створіть клас Calculator, з функціями +-*/. Створіть клас CalculatorPro, який також буде вираховувати відсоток від числа і зводитиме число в ступінь
//
 
class Calculator {
    
    func sum(a: Int, b: Int) -> Int {
        var sum = a + b
        return sum
    }
    
    func difference(a: Int, b: Int) -> Int {
        var difference = a - b
        return difference
    }

    func multiply(a: Int, b: Int) -> Int {
        var multiply = a * b
        return multiply
    }

    func divide(a: Double, b: Double) -> Double {
        var divide = a / b
        return divide
    }
}


class CalculatorPro: Calculator {
    
    func powTo(a: Int, to: Int) -> Int {
        return Int(pow(Double(a),Double(to)))
    }
    
    func powerToCycle(first: Int, second: Int) {
        var a = 1
        for _ in 1...second {
            a *= first
        }
        print(a)
    }
    
    func percentage(number: Double, percent: Double) -> Double {
        var result = (number * percent)/100
        return result
    }
}

var calculator = Calculator()
calculator.sum(a: 3, b: 4)
calculator.difference(a: 3, b: 4)
calculator.multiply(a: 3, b: 4)
calculator.divide(a: 3, b: 4)

var calculatorPro = CalculatorPro()
calculatorPro.powTo(a: 3, to: 4)
calculatorPro.percentage(number: 3, percent: 4)
calculatorPro.powerToCycle(first: 3, second: 4)

print(" ")
print("TASK-5.1")

//5.1* Створіть клас SuperProCalc, дочірній від CalculatorPro, який буде рахувати складні відсотки для розрахунку суми депозиту на вказаний період часу із зазначеною процентною ставкою

class SuperProCalc: CalculatorPro {
    
    func deposit(sum: Double, incomePercentage: Double, days: Double) {
        let result = sum / 100 * incomePercentage / 365 * days
        print(result)
    }
}

var superProCalc = SuperProCalc()
superProCalc.deposit(sum: 100_000, incomePercentage: 14, days: 365)


print(" ")
print("TASK-6")

/*
     6. Придумайте свій приклад використання наслідування. Найпростіший спосіб - уявити, що ви створюєте комп'ютерну гру. Наприклад: вам потрібно створити персонажів, які будуть вміти щось робити (це функції) та мати якісь властивості (var/let …)
     Створіть основу для персонажа - батьківський клас, а потім додайте дочірні класи. Спробуйте спроектувати систему так, щоб дочірні персонажі мали перевизначати методи батьківського класу (override func)
     Додайте ситуації, в яких дочірні персонажі мають використовувати виклик батьківського методу (super.*), і в яких не мають цього робити
     Використовуйте init для ваших класів. Створіть екземпляри ваших класів, та протестуйте їх
     Це творче завдання і воно буде прийняте при будь-якому рішенні, навіть дуже простому. Але це також ваша можливість створити щось масштабне та цікаве
*/

class Characters {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func shout() {
        print("\(name): I'm shouting")
    }
}

class PersonOne: Characters {
    override func shout() {
        print("\(name): I'm shouting, because I'm crazy :)")
    }
}

class PersonTwo: Characters {
    override func shout() {
        super.shout()
        print("\(name): I was shouting, but now I'm health")
    }
}

class PersonTwoSecond: Characters {
    override func shout() {
        super.shout()
        print("I'm shouting again")
    }
}

var character = Characters(name: "character", age: 20)
character.shout()

var personOne = PersonOne(name: "personOne", age: 30)
personOne.shout()

var personTwo = PersonTwo(name: "personTwo", age: 40)
personTwo.shout()

var personTwoSecond = PersonTwoSecond(name: "personTwoSecond", age: 50)
personTwoSecond.shout()



print(" ")
print("TASK-7")

/**
 7. Створіть функцію, яка приймає 1 параметр, відсоток заряду батареї. Нехай функція поверне повідомлення користувача залежно від цього відсотка:
 якщо 100%: "Пристрій заряджений",
 якщо 70-80%, “Необхідно зарядити пристрій протягом 6 годин”
 якщо 20-40%, "Поставте пристрій на зарядку"
 якщо 0%, "Пристрій повністю розряджений"
 В інших випадках не виводьте нічого. Використовуйте switch case.
 */

let battery = 80

switch battery {
case 100: print("Пристрій заряджений")
case 70...80: print("Необхідно зарядити пристрій протягом 6 годин")
case 20...40: print("Поставте пристрій на зарядку")
case 0: print("Пристрій повністю розряджений")
default:
    print("")
}


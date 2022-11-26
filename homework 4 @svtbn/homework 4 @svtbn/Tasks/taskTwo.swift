//
//  taskTwo.swift
//  homework 4 @svtbn
//
//  Created by Sviatoslav Binovskyi on 23.11.2022.
//

import Foundation

/*
 Protocol-oriented programming
 
 2. Створюємо персонажів для гри:

 Створіть enum VehicleType: electric / nonElectric

 Створіть протокол Vehicle, який включатиме властивості: weight: Float, speed: Float, type: VehicleType, canFly: Bool. Всі ці властивості можна позначити як { get }. Додайте функцію prepare()

 Розширте протокол Vehicle з реалізацією функції prepare: якщо Vehicle electric, виводимо в консоль повідомлення "Charge", якщо noElectric, виводимо повідомлення "Refuel". Також задайте значення false для властивості canFly
 
 Створіть протокол FlyableVehicle з функцією getMaxHight -> Float

 Створіть протокол Vehicle для об'єктів, що реалізують FlyableVehicle, додайте за замовчуванням для canFly значення true, type - nonElectric. Реалізуйте функцію getMaxHight. Якщо це електричний об'єкт, нехай він повертає weight + speed, якщо ні, то weight * speed
 
 Створіть структури Car, ElectricCar, AirPlane та створіть їх екземпляри. Всередині структур задавати значення за замовчуванням не обов'язково, ініціалізатор буде присутній у структурах за умовчанням

 Виведіть в консоль властивості у Car і electricalCar: type canFly. У airPlane виведіть властивість canFly та викличте функцію getMaxHight

 Створіть структуру ElectricalAirplane, її екземпляр з тими самими даними, які ви використовували створення звичайного літака. Виведіть у консоль значення, яке повертає функція getMaxHight()


 */

enum VehicleType {
    case electric
    case nonElectric
}

protocol Vehicle {
    var weight: Float { get }
    var speed: Float { get }
    var type: VehicleType { get }
    var canFly: Bool { get }
    
    func prepare()
}

extension Vehicle {
    
    func prepare() {
        if type == .electric {
            print("Charge")
        } else {
            print("Refuel")
        }
    }
    
    var canFly: Bool { return false }
}

protocol FlyableVehicle {
    func getMaxHight() -> Float
}

extension Vehicle where Self: FlyableVehicle {
    
    var canFly: Bool { return true }
    var type: VehicleType {
        return VehicleType.nonElectric
    }
    
    func getMaxHight() -> Float {
        if type == .electric {
            return weight + speed
        } else {
            return weight * speed
        }
    }
}


struct Car: Vehicle {
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType
    
    
}

var car = Car(weight: 1_500, speed: 180, type: .nonElectric)

struct ElectricCar: Vehicle {
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType
    
    
}

var electricCar = ElectricCar(weight: 200, speed: 160, type: .electric)

struct AirPlane: Vehicle, FlyableVehicle {
    var weight: Float
    
    var speed: Float

}

var airPlane = AirPlane(weight: 100, speed: 200)


struct ElectricalAirplane: Vehicle, FlyableVehicle {
    var weight: Float
    
    var speed: Float
    
    var type: VehicleType
}

var electricalAirplane = ElectricalAirplane(weight: 100, speed: 200, type: .electric)

func taskTwo() {
    
    print(car)
    print(car.canFly)
    print(car.prepare())
    
    print(electricCar)
    print(electricCar.canFly)
    print(electricCar.prepare())
    
    print(airPlane)
    print(airPlane.canFly)
    print(airPlane.getMaxHight())
    print(airPlane.prepare())
    
    print(electricalAirplane)
    print(electricalAirplane.canFly)
    print(electricalAirplane.getMaxHight())
    print(electricalAirplane.prepare())
    
    
}

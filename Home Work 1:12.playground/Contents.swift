//import UIKit




//Задача 1
//Создай типы для роста(Int), веса(double) и имени(String)
//Сделай структуру с полями под каждый тип
//Создай 5 экземпляров структур( с разными данными) и запихни их в массив
//После, с помощью цикла выведи все экземпляры у которых вес больше 100
typealias growth = Int
typealias weight = Double
typealias name = String

struct PersonData {
    var growth: growth
    var weight: weight
    var name: name
}

let infoHumanIvan = PersonData(growth: 182, weight: 87.1234556677, name: "Ivan")
let infoHumanAnton = PersonData(growth: 172, weight: 60.1234556677, name: "Anton")
let infoHumanAndrej = PersonData(growth: 180, weight: 90.1234556677, name: "Anrej")
let infoHumanPetr = PersonData(growth: 160, weight: 120.1234556677, name: "Petr")
let infoHumanAlex = PersonData(growth: 155, weight: 100.1234556677, name: "Alex")

var humanArray = [infoHumanIvan, infoHumanAnton, infoHumanAndrej, infoHumanPetr, infoHumanAlex]

for person in humanArray {
    if person.weight > 100 {
        print(person)
    }
}

let person = humanArray.filter({ return $0.weight > 100 })
print(person)

let myPerson  = humanArray.map({ return $0.weight > 100 })
print(myPerson)


//Задача 2
//У тебя есть две переменные. Первая с плавающей точкой - в километрах. Вторая целочисленная - время в секундах, за которое преодолели данное расстояние.
//Найди скорость в метрах в минуту и выведи в консоль

var distance = Float(9.2)
var time = Int(2225)
var speed = (Int(distance) * 1000) / (time/60)
print(speed)




//Задача 3
//Есть два целых трехзначных числа. Выведи в консоль шестизначное, образованное слиянием двух чисел в одно. К примеру из чисел 555 и 321 должно получиться 555321
var firstNumber: Int = 555
var secondNumber: Int = 321
print("\(firstNumber)\(secondNumber)")




//Задача 4
// а) Объяви две целочисленные переменные типов Int8 и UInt8. В одну из них запиши максимальное значение, которое может принять параметр типа UInt8, в другую — минимальное значение, которое может принять параметр типа Int8.
// б) Выведи полученные значения на консоль.

var maxValue: UInt8 = UInt8.max
print("Максимальное значение UInt8 = \(maxValue)")

var minValue: Int8 = Int8.min
print("Минимальноее значение Int8 = \(minValue)")

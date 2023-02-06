import UIKit

func answer(adresat: String, message: String) {
    print("\(adresat), \(message)")
}

answer(adresat: "Koss", message: "KO KO ")

func sum(first: Int, second: Int) {
    let sum = first + second
    print(sum)
}
sum(first: 15, second: 3432)


func sumMany(numbers: Int...) {
    var sum = 0
    for number in numbers {
        sum += number
    }
    print(sum)
}

sumMany(numbers: 1,2,4,4,324,523,4,23)


func sumArray(numbers: [Int]) {
    var sum = 0
    for number in numbers {
        sum += number
    }
    print(sum)
}

sumArray(numbers: [1,2,4,4,324,523,4,23])



func pi () -> Double {
    return 3.1415
}

let numbetPi = pi()

let radius = 23.5
func roundArea(red: Double) -> Double {
    let area = radius * radius * pi()
    return area
}
 
roundArea(red: radius)

func ringLengh(rad: Double) -> Double {
    let length = 2 * pi() * rad
    return length
}

ringLengh(rad: radius)

func greeting(name: String?) -> String {
    guard let name = name else {
        return "Hello guest"
    }
    
    let greeting = "Hello, \(name)!"
    return greeting
}
let name: String? = nil

greeting(name: name)

 

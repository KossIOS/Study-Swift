import UIKit

let constArray = ["a","b","c","d","e"]
constArray.count
//количество элементов

var array = [String]()

if array.count == 0 {
    print("Macсив пустой")
}

if array.isEmpty {
    print("Massive is Empty")
}

array += constArray

array += ["W"]
// add new elements

array.append("ok")
print(array)

array[0]
array[1..<4]
array

array.insert("-", at: 3)
array.remove(at: 3)
array

array.removeLast()
array


// MARK: Tuples

let tuples: (Int, String, Double, Bool) = (1, "Polina", 25.5, false)
let oneTuple = (1, "Polina", 25.5, false)
let (numberOne, name, decimalValue, boolValue) = oneTuple
numberOne
name
decimalValue
boolValue

let (_, _, c,_) = oneTuple

c
let tuple = (one: 1, name : "Polina", boolValue: true)

tuple.0
tuple.boolValue

//let name1 = "Sergey"; let name2 = "Polina"; let name3 = "Jack"

let (name1,name2,name3) = ("Sergey", "Polina", "Jack")

let nameTup1 = (name1: "Sergey", name2: "Polina", name3: "Jack")
nameTup1.name1
print(nameTup1)

let nameNames = "Jack"
let age = 25
print(" User = \(nameNames) age = \(age)")
print((nameNames, name))

// MARK: Dictionary

//let dict1: [Int: String] = [0 : "Mama", 1 : "papa"]
//let dict2: Dictionary<String, Double> = ["papa" : 30.0]
let dict1 = [0: "Mama", 1: "Papa"]

dict1[0]
var dict = ["car": "mercedes", "tel": "iphone"]
dict["kitchen"] = "salad"
dict.keys
dict.values

dict.updateValue("Vova", forKey: "Pizzer")

dict
for key in dict .keys {
    print((key), (dict.values))
}

for (key, value) in dict {
    print(key,value)
}

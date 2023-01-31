import UIKit


var a = 10
var b = 15
var sum = a + b
print(sum)

var c: Int = 10
var d: Double = 6.245

var e = c + Int(d)
var f = Double(c) + d

//так можно без явного указания типа переменных
var g = 10 + 6.245

// создание своего типа данных
typealias myTypeNumber = Int
var number: myTypeNumber = 10
print(number)

var boolValue: Bool = false
if boolValue == true {
    print ("This is true")
}else{
    print ("This is false")
}

// можно с нижним подчеркиванием с выход бюудет как нормальное число
var t = 123_456_789


//MARK: STRING

var str1 = "My Word"
var str2: String = "Hello"

var word = ""
var initString = String()
//initialization when we don't now value

print(str2 + " " + str1 )
//add symbol in word
var char: Character = "X"
str1.append(char)

//c - внутренняя переменная прогоняем её по кругу
for c in "Hello word" {
    print(c)
}
var myWord = "HeloMyWord"
myWord.count

if myWord.isEmpty{
    print("isEmpty")
} else {
    print("Full")
}

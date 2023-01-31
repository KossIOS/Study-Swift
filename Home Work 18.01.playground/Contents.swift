import UIKit

//MARK: Есть цифра от 1 до 5 (номер пальца руки).Необходимо показать его название на экран.

var fingersHand = 5
if fingersHand == 1 {
    print("Thumb")
} else if fingersHand == 2 {
    print("Forefinger")
} else if fingersHand == 3 {
    print("Middle finger")
} else if fingersHand == 4 {
    print("Ring finger")
} else if fingersHand == 5 {
    print ("Little finger")
}

// MARK: В переменной тіп лежит число от 0 до 59. Нужно определить в какую четверть часа попадает это число.

var number = 55
if number >= 0 && number <= 14 {
    print("First quarter")
} else if number >= 15 && number <= 30 {
    print("Second quarter")
} else if number >= 31 && number <= 45 {
    print("Third quarter")
} else if number >= 46 && number <= 59 {
    print("Fourth quarter")
}


//MARK: Переменная язык может принимать 2 значения: 'русский английский". Русский - в переменную агг запишем массив дней недели на русском языке, английский - то на английском. Реши задачу через 2 if, через switch-case и через многомерный массив без ифов и switch.
//if else
var languageRu = "ru"
if languageRu == "ru" {
    print(["Понедельник","Вторник","Среда", "Четверг","Пятница","Суббота","Воскресенье"])
} else if languageRu == "eng" {
    print(["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"])
}

//switch
var languageEng = "eng"
switch languageEng {
case "ru":
    print(["Понедельник","Вторник","Среда", "Четверг","Пятница","Суббота","Воскресенье"])
case "eng":
    print(["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"])
default:
    break
}

//array
var language = "ru"
var arrayDaysWeek = [
    "ru" : ["Понедельник","Вторник","Среда", "Четверг","Пятница","Суббота","Воскресенье"],
    "eng": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
]
print(arrayDaysWeek[language] ?? "")

//MARK: Если переменная а больше нуля и меньше 5-ти, то выведите "Верно", иначе выведите Неверно'
var value = 3
if value > 0 && value < 5 {
    print("True")
} else {
    print("False")
}

//MARK: Если переменная а равна нулю или равна двум, то прибавьте к ней 7, иначе поделите ее на 10. Выведите новое значение переменной на экран. Проверьте работу скрипта при а, равном 5, 0, -3, 2.
var a = 10
if a == 0 || a == 2 {
    print(a + 7)
} else {
    print(a/10)
}

//MARK: Если переменная а равна или меньше 1, а переменная в больше или равна 3, то выведите сумму этих переменных, иначе выведите их разность (результат вычитания). Проверьте работу скрипта при а и b, равном 1 и 3, 0 и 6, 3 и 5.
var b = 3
var c = 5
if b <= 1 && c >= 3 {
    print(b + c)
} else {
    print(b - c)
}

// MARK: Если переменная а больше 2-х и меньше 11-ти, или переменная в больше или равна 6-ти и меньше 14-ти, то выведите "Верно", в противном случае выведите "Неверно".

var d = 50
var e = 30
if d > 2 && d < 11 || e >= 6 && e < 14 {
    print("True")
} else {
    print("False")
}


//MARK: Переменная num может принимать 4 значения: 1, 2, 3 или 4. Если она имеет значение 1', то в переменную result запишем "зима", если имеет значение '2" - 'весна' и так далее. Решите задачу через switch-case.

var num = 2
var result : String = ""
switch num {
case 1 :
    result = "Winter"
case 2 :
    result = "Spring"
case 3 :
    result = "Autumn"
case 4 :
    result = "Summer"
default:
    break
}
print(result)

//MARK: В переменной фау лежит какое-то число из интервала от 1 до 31. Определите в какую декаду месяца попадает это число (в первую, вторую или третью).

var day = 16
if day >= 1 && day <= 10 {
    print("First decade")
} else if day >= 11 && day <= 20 {
    print("Second decade")
} else if day >= 21 && day <= 30 {
    print("Third decade")
}

//MARK: В переменной month лежит какое-то число из интервала от 1 до 12. Определите в какую пору года попадает этот месяц (зима, лето, весна, осень).

var month = 10
if month == 12 || month == 1 || month == 2 {
    print("Winter")
} else if month >= 3 && month <= 5{
    print("Spring")
} else if month >= 6 && month <= 8 {
    print("Summer")
} else if month >= 9 && month <= 11 {
    print("Autumn")
}

//MARK: Дана строка, состоящая из символов, например, 'abcde'. Проверьте, что первым символом этой строки является буква 'а'. Если это так - выведите 'да', в противном случае выведите 'нет'.
var string = "abcd"
if string.first == "a" {
    print("True")
} else {
    print("False")
}

//MARK: Дана строка с цифрами, например, '12345'. Проверье, что первым символом этой строки является цифра 1, 2 или 3. Если это так - выведите 'да', в противном случае выведите 'нет".

var digits = "12345"
if digits.first == "1" || digits.first == "2" || digits.first == "3" {
    print("True")
} else {
    print("False")
}

// MARK: Дана строка из 3-х цифр. Найдите сумму этих цифр. То есть сложите как числа первый символ строки, второй и третий.

let val = "456"
var sum = 0
for i in val {
    sum += Int(String(i)) ?? 0
}

print(sum)

let val1 = "456"
let result1 = val1.compactMap{Int(String($0))}.reduce(0, +)
print(result1)

//MARK: Дана строка из 6-ти цифр. Проверьте, что сумма первых трех цифр равняется сумме вторых трех цифр. Если это так - выведите "да", в противном случае выведите 'нет"

let numberS = "123456"
var firstIndex  = numberS.index(numberS.startIndex, offsetBy: 0)
var thirstIndex = numberS.index(numberS.startIndex, offsetBy: 2)
var range1 = numberS[firstIndex...thirstIndex]
let resultFirst = range1.compactMap{Int(String($0))}.reduce(0, +)

var forthIndex  = numberS.index(numberS.startIndex, offsetBy: 3)
var lasttIndex = numberS.index(numberS.startIndex, offsetBy: 5)
var range2 = numberS[forthIndex...lasttIndex]
let resultSecond = range2.compactMap{Int(String($0))}.reduce(0, +)
if resultFirst == resultSecond {
    print("Ahuenno")
} else {
    print("Nichuya")
}

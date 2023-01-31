import UIKit

//MARK: 1)Первая задача интересная и достаточно простая. Но код получится длинным. Есть переменная - число от 1 до 9999 (сумма выдачи в банкомате). Необходимо вывести на экран словами введенную сумму и в конце написать название валюты с правильным окончанием. Например: 7431 - семь тысяч четыреста тридцать один доллар, 2149 - две тысячи сто сорок девять долларов, 15 - пятнадцать долларов, 3 - три доллара.

//1) Первый  вариант (Без гривен)

func numberAsWord(input: Int) -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .spellOut
    numberFormatter.locale = Locale(identifier: "ukr_UA")
    let numberAsWord = numberFormatter.string(from: NSNumber(value: input))
    return numberAsWord ?? ""
}
numberAsWord(input: 12345622222)

// 2)Второй вариант

let number = 1010

let result = number/1000 % number
let result2 = number % 1000/100
let result3 = number % 100/10
let result4 = number % 10
let result5 = number % 100

//MARK: 1000...9000
if result2 == 0, result3 == 0, result4 == 0{
    if result == 1 {
        print("Одна тысяча гривен")
    }
    if result == 2 {
        print("Две тысячи гривен")
    }
    if result == 3 {
        print("Три тысячи гривен ")
    }
    if result == 4 {
        print("Четыре тысячи гривен")
    }
    if result == 5 {
        print("Пять тысяч гривен")
    }
    if result == 6 {
        print("Шесть тысяч гривен")
    }
    if result == 7 {
        print("Семь тысяч гривен")
    }
    if result == 8 {
        print("Восемь тысяч гривен")
    }
    if result == 9 {
        print("Девять тысяч гривен")
    }
} else {
    if result == 1 {
        print("Одна тысяча")
    }
    if result == 2 {
        print("Две тысячи")
    }
    if result == 3 {
        print("Три тысячи")
    }
    if result == 4 {
        print("Четыре тысячи")
    }
    if result == 5 {
        print("Пять тысяч")
    }
    if result == 6 {
        print("Шесть тысяч")
    }
    if result == 7 {
        print("Семь тысяч")
    }
    if result == 8 {
        print("Восемь тысяч")
    }
    if result == 9 {
        print("Девять тысяч")
    }
}
//MARK: 100...900

if result3 == 0 && result4 == 0  {
    if result2 == 1 {
        print("Сто гривен")
    }
    if result2 == 2 {
        print("Двести гривен")
    }
    if result2 == 3 {
        print("Триста гривен")
    }
    if result2 == 4 {
        print("Четыреста гривен")
    }
    if result2 == 5 {
        print("Пятьсот гривен")
    }
    if result2 == 6 {
        print("Шестьсот гривен")
    }
    if result2 == 7 {
        print("Семьсот гривен")
    }
    if result2 == 8 {
        print("Восемьсот гривен")
    }
    if result2 == 9 {
        print("Девятьсот гривен")
    }
} else {
    if result2 == 1 {
        print("Сто")
    }
    if result2 == 2 {
        print("Двести")
    }
    if result2 == 3 {
        print("Триста")
    }
    if result2 == 4 {
        print("Четыреста")
    }
    if result2 == 5 {
        print("Пятьсот")
    }
    if result2 == 6 {
        print("Шестьсот")
    }
    if result2 == 7 {
        print("Семьсот")
    }
    if result2 == 8 {
        print("Восемьсот")
    }
    if result2 == 9 {
        print("Девятьсот")
    }
}
//MARK: 20...90
if  result4 != 0 {
    if result3 == 2 {
        print("Двадцать")
    }
    if result3 == 3 {
        print("Тридцать")
    }
    if result3 == 4 {
        print("Сорок")
    }
    if result3 == 5 {
        print("Пятьдесят")
    }
    if result3 == 6 {
        print("Шестьдесят")
    }
    if result3 == 7 {
        print("Семьдесят")
    }
    if result3 == 8 {
        print("Восемьдесят")
    }
    if result3 == 9 {
        print("Девяносто")
    }
} else if result == 0 || result2 == 0 || result4 == 0 {
    if result3 == 2 {
        print("Двадцать гривен")
    }
    if result3 == 3 {
        print("Тридцать гривен")
    }
    if result3 == 4 {
        print("Сорок гривен")
    }
    if result3 == 5 {
        print("Пятьдесят гривен")
    }
    if result3 == 6 {
        print("Шестьдесят гривен")
    }
    if result3 == 7 {
        print("Семьдесят гривен")
    }
    if result3 == 8 {
        print("Восемьдесят гривен")
    }
    if result3 == 9 {
        print("Девяносто гривен")
    }
}
//MARK: 10...19
if result5 >= 10 && result5 <= 19 {
    if result5 == 10 {
        print("Десять гривен")
    }
    if result5 == 11 {
        print("Одиннадцать гривен")
    }
    if result5 == 12 {
        print("Двенадцать гривен")
    }
    if result5 == 13 {
        print("Тринадцать гривен")
    }
    if result5 == 14 {
        print("Четырнадцать гривен")
    }
    if result5 == 15 {
        print("Пятнадцать гривен")
    }
    if result5 == 16 {
        print("Шестнадцать гривен")
    }
    if result5 == 17 {
        print("Семьнадцать гривен")
    }
    if result5 == 18 {
        print("Восемнадцать гривен")
    }
    if result5 == 19 {
        print("Девятнадцать гривен")
    }
    
//MARK: 1...9
} else if result4 <= 9 || result4 > 19 {
    if result4 == 1 {
        print("Одна гривна")
    }
    if result4 == 2 {
        print("Две гривны")
    }
    if result4 == 3 {
        print("Три гривны")
    }
    if result4 == 4 {
        print("Четыре гривны")
    }
    if result4 == 5 {
        print("Пять гривен")
    }
    if result4 == 6 {
        print("Шесть гривен")
    }
    if result4 == 7 {
        print("Семь гривен")
    }
    if result4 == 8 {
        print("Восемь гривен")
    }
    if result4 == 9 {
        print("Девять гривен")
    }
}














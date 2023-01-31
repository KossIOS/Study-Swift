import UIKit

//MARK: Напиши программу, которая меняет местами элементы одномерного массива из String в обратном порядке. Не используя дополнительный массив для хранения результатов.

var  array = ["0","1","2","3","4","5","6","7","8"]

for i in 0..<(array.count)/2 {
    var temp = array[array.count - i - 1]
    array[array.count - i - 1] =  array[i]
    array[i] = temp
}

print(array)

//MARK: Напиши функцию, принимающую в аргументы строку, которая определит, сколько слов передано в этой строкe

func countingWords(_ input : String){
    let chararacterSet = CharacterSet.whitespacesAndNewlines.union(.punctuationCharacters)
    let components = input.components(separatedBy: chararacterSet)
    let words = components.filter { !$0.isEmpty }
    print(words.count)
}

countingWords("Swift includes modern features like type inference, optionals, and closures, which make the syntax concise yet expressive")

//MARK: Среднее арифметическое элементов массива
//А) Создайте 2 массива из 5 случайных целых чисел из отрезка [0;5] каждый

let firstArray = [1,2,3,4,5]
let secondArray = [0,4,3,2,1]

//Б) Выведите массивы на экран в двух отдельных строках
print("\(firstArray)\n\(secondArray)")

//В) Посчитайте среднее арифметическое элементов каждого массива и сообщите, для какого из массивов это значение оказалось больше (либо сообщите, что их средние арифметические равны)

func avgArraValue(_ array : [Int]) -> Int {
    let sumArray = array.reduce(0, +)
    let avgArrayValue = sumArray / array.count
    return avgArrayValue
}

avgArraValue(firstArray)
avgArraValue(secondArray)

if avgArraValue(firstArray) > avgArraValue(secondArray) {
    print("Array with largest arithmetic mean value - firstArray")
} else if avgArraValue(firstArray) < avgArraValue(secondArray) {
    print("Array with largest arithmetic mean value - secondArray")
} else if avgArraValue(firstArray) == avgArraValue(secondArray) {
    print("The arithmetic mean of the arrays are equal")
} else {
    print("The arithmetic mean of the arrays are not equal")
}

//MARK: Напиши функцию, которая должна имитировать раздачу карт для игры в покер. Функция получает число n и раздает карты на n  игроков (по 5 карт каждому) из рассортированной колоды. Разделяйте пять карт, выданных каждому игроку, пустой строкой.
let cardsPerPlayer = 5
var players = 5
let suits = ["Пик", "Бубен", "Черв", "Треф"]
let rank = ["2","3","4","5","6","7","8","9","10","Валет", "Дама", "Король", "Туз"]
let numberOfCardsInADeck = suits.count * rank.count

var allCombinationCardArray = [String]()
for i in 0..<suits.count {
    for j in 0..<rank.count {
        allCombinationCardArray.append(suits[i] + " " + rank[j])
    }
}

for i in 0..<players * cardsPerPlayer {
        print("Player \(allCombinationCardArray.shuffled()[i])")
    if i % cardsPerPlayer == cardsPerPlayer - 1{
        print("\n")
    }
}

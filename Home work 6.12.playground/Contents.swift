
//MARK://Удалить все элементы из массива по очереди / сразу
var myIntArray = [28,36,67,87,34,67,23,5636,67,578,568]
for _ in 0..<6{
    myIntArray.remove(at: 0)
    print(myIntArray)
}

////3) Создать два массива на 100 элементов. Сравнить массивы.
//Отсортировать один по возрастанию, другой по убыванию.
//Объединить массивы в один. Отфильтровать массив по условию
//«Найти все четные числа»
let myfirstArray = Array(0...50)
let mySecondArraty = Array(10...60)
let equalsTwoArrays = myfirstArray.elementsEqual(mySecondArraty)
myfirstArray.sorted()
mySecondArraty.sorted(by: >)
let mergeArrays = myfirstArray + mySecondArraty
let arrayInteger = mergeArrays.filter{$0 % 2 == 0}
print(mergeArrays)
print(equalsTwoArrays)
print(arrayInteger)




//4) Создать массив на 10 элементов и преобразовать его так, чтобы вместо элементов были их квадраты чисел. (Например. Массив 1,2,3 должен принять форму 1, 4, 9)
let myNewIntArray = [1,2,3,4,5,6,7,8,9,10]
let exponentiation = myNewIntArray.map{$0 * $0}
print(exponentiation)

//MARK: Tuples

let personTuple = ("Alex" , 25 , "married")
let (name, age, marritalStatus) = personTuple
print("Age : \(age), Marrital Status: \(marritalStatus)")


//MARK: Dictionary, Set

let someDigitsSet: Set = [1,2,3,4,5,10,11]
let secondSomeDigitsSet: Set = [6,7,8,9,10,1,5]
let testSet: Set = [2,5,10]
let mergerSet = someDigitsSet.union(secondSomeDigitsSet).sorted()
let intresection = someDigitsSet.intersection(secondSomeDigitsSet).sorted()
let substracting = someDigitsSet.subtracting(secondSomeDigitsSet).sorted()
let symDif = someDigitsSet.symmetricDifference(secondSomeDigitsSet).sorted()
print(mergerSet)
print(intresection)
print(substracting)
print(testSet.isSubset(of: someDigitsSet))
print(someDigitsSet.isSuperset(of: testSet))
print(someDigitsSet.isDisjoint(with: testSet))

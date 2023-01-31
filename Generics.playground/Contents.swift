import UIKit
//MARK: Generics - уменьшает дублирование кода (обобшает типы данных)
// Equatable - равно не равно == !=
// COmparable  - сравниваемые, сопостовляемые  значения < > <= >= !=
// CustomStringCovertible = могут быть представлены в виде строки
// Numeric -  все числа



func addInts(a: Int, b: Int) -> Int  {
    return a + b
}

func addaddDouble(a: Int, b: Int) -> Int  {
    return a + b
}

func add<T : Numeric>(a: T, b: T ) -> T {
    return a + b
}

add(a: 56, b: 45)
add(a: 34.34, b: 34)


protocol Storage {
    associatedtype Item
    func store(item: Item)
    func retrieve (index: Int) -> Item?
}

struct Book {
    let title: String
    let autor: String
}

class BookCase: Storage {
    typealias Item = Book
    var books = [Book]()
    func store(item: Book) {
        books.append(item)
    }
    
    func retrieve(index: Int) -> Book? {
        guard index < books.count else {
            return nil
        }
        return books[index]
    }
}

class Case<Item>: Storage {
    var items = [Item] ()
    func store(item: Item) {
        items.append(item)
    }
    
    func retrieve(index: Int) -> Item? {
        guard index < items.count else {
            return nil
        }
        return items[index]
    }
}

struct Clothes {
    let brend: String
    let price: Int
    let size: String
}

let tshirt = Clothes(brend: "Versace", price: 1500, size: "L")
let shoes = Clothes(brend: "Nike", price: 200, size: "43")

let clothesCase = Case<Clothes>()

clothesCase.store(item: tshirt)
clothesCase.store(item: shoes)

clothesCase.items.count
clothesCase.items.last?.price
clothesCase.items.last?.brend

//Stack - (Lefoa) last in, first out


//push = положить в стек
//pop = достать послений элемент
//isEmty = пустой ли стек
//size = размер стека
//top = верхний элемент стека
//Container - массив записей


struct Stack<T> {
    private var container = [T]()
    var isEmpty: Bool {
        return self.container.isEmpty
    }
    
    var size: Int {
        return self.container.count
    }
    
    var top: T? {
        return self.container.last
    }
    mutating func push(_ element : T) {
        self.container.append(element)
    }
    
    mutating func pop() -> T? {
        if !self.isEmpty {
            return container.removeLast()
        } else {
            return nil
        }
    }
}

var stack = Stack<String>()
stack.push("Steve Jobs")
stack.push("Nike")
stack.push("Kopernik")

stack.size
stack.isEmpty
stack.top
stack.pop()

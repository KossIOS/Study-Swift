import UIKit

protocol FullyNamed {
    var fullName: String { get }
    
}
struct Person : FullyNamed {
    
    var fullName: String
    var age: Int
    var phoneNumber: Int
}

class Company: FullyNamed {
    var fullName: String
    var director = "Tim Cook"
    init(prefix: String, title: String) {
        self.fullName = "\(prefix) \(title)"
    }
}

let misha = Person(fullName: "Michael", age: 32, phoneNumber: 65464894712)
let alisa = Person(fullName:  "Alisa", age: 34, phoneNumber: 65468468468)
let apple = Company(prefix: "LLC", title: "Apple")
let google = Company(prefix: "LLC", title: "Google")
class Bank: Company {
    var clients = [FullyNamed]()
}

let bank = Bank(prefix: "OOO", title: "MONOBANK")
bank.clients.append(misha)
bank.clients.append(alisa)
bank.clients.append(apple)
bank.clients.append(google)
google.director = "KOss KOsss"
for client in bank.clients {
    print(client.fullName)
    
    if client is Person {
        print((client as! Person).phoneNumber)
    } else if client is Company {
        print((client as! Company).director)
    }
}


enum Speciality {
    case ios, android, pyton, java
}

protocol Human {
    var name: String { get }
}

protocol Developer {
    var speciality: Speciality { get }
    var experienseInYears: Int { get }
}

protocol Teacher {
    var speciality: Speciality { get }
    func teach(theme : String)
}

struct DevTeacher: Human, Developer, Teacher {
    var name: String
    
    var speciality: Speciality
    
    var experienseInYears: Int
    
    func teach(theme: String) {
        print("I study people. Theme lection: \(theme)")
    }
}

let vlad = DevTeacher(name: "Vlad", speciality: .ios, experienseInYears: 4)

vlad.name
vlad.teach(theme: "Protocol")


protocol Named {
    var title: String { get }
}

protocol Location {
    var lat: Double { get }
    var lon: Double { get }
}

struct City: Location, Named {
    var lat: Double
    
    var lon: Double
    
    var title: String
}

struct Club: Location, Named {
    var lat: Double
    
    var lon: Double
    
    var title: String
}

struct Brend: Named {
    var title: String
}

func concert(place: Location & Named, band: String) {
    print("Band \(band) play in \(place.title). Place for: GPS \(place.lat),\(place.lon) ")
}

let newyork = City(lat: 45.78678678, lon: 65.56745646, title: "Cracow")
let someClub = Club(lat: 54.904953095, lon: 34.92394239, title: "Ibica")
let brend = Brend(title: "Apple")
concert(place: newyork, band: "Kalush")
concert(place: someClub, band: "TNMK")
//concert(place: brend, band: "SOAD") - не соответствует композиции Location, Named


// Pattern Delegate
protocol CofeeMakerDelegate {
    func makeCofee(amount: Int) -> Int
}
class Client {
    var name = "Koss"
    var coffeeMaker: CofeeMakerDelegate?
    func visitCofeeHouse (coffeeMaker : CofeeMakerDelegate) {
        self.coffeeMaker = coffeeMaker
    }
    
    func goOutCoffeeHouse() {
        self.coffeeMaker = nil
    }
    
    func buyCoffee(amount: Int) {
        guard let delegate = coffeeMaker else {
            print("You are not in a coffee shop")
            return
        }
        let count = delegate.makeCofee(amount: amount)
        print("you buy \(count) coffee")
    }
}

struct Barista: CofeeMakerDelegate {
    func makeCofee(amount: Int) -> Int {
        let price = 80
        let count = amount / price
        return count
    }
}

struct Officiant: CofeeMakerDelegate {
    func makeCofee(amount: Int) -> Int {
        let price = 20
        let count = amount / price
        return count
    }
}

let waiter = Officiant()
let client = Client()

client.visitCofeeHouse(coffeeMaker: waiter)
client.buyCoffee(amount: 2000)
client.goOutCoffeeHouse()

let barista = Barista()
client.visitCofeeHouse(coffeeMaker: barista)
client.buyCoffee(amount: 100)

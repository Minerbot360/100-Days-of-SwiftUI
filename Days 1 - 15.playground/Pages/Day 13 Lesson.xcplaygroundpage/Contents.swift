//: [Previous](@previous)

import Foundation

//protocols allow us to say that some properties and methods exist, but they arent't implemented yet.
protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

//using the protocol, we can now define functions that comform to that new protocol
struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
    
    let name = "Car"
    var currentPassengers = 1
}

//here is a little function that we can use to test the protocol:
func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)
//because vehicle: vehicle, any type that conforms to vehicle can be used.

//we can create a new vehicle and use the same function.
struct Bicycle: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
    
    let name = "Bicycle"
    var currentPassengers = 1
}

let bike = Bicycle()
commute(distance: 50, using: bike)

//I added two new properties called name and currentPassangers. I have to add things to each struct that way they conform to the protocol.

//we can make a function that takes an array of vehicles and prints the time estimates for all of them.
func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

getTravelEstimates(using: [car, bike], distance: 150)

//opaque return types are really important. Let's start with these two functions:
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}
//I added some Equatable to the return. This tells Swift that some sort of equatable value will be returned, but we don't know what it will be yet.

//if you want to trim the empty space from a String like this:
var quote = "   The truth is rarely pure and never simple   "

//you can use .trimmingCharacters
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

//this is quite long, so Swift has a way to shorten it using an extension:
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
}

//now, if you want to remove whitespace and newlines, you can use trimmed()
let trimmed2 = quote.trimmed()
print(trimmed2)
//extensions are better than functions in a few ways, one is that they add to the data type, not just use the data type.

//we can also modify a string directly using a mutating func added to the original extension

//using trim() will alter the starting string, instead of returning a new one.
quote.trim()

//a property can be added to any data type. here we will add to string:
extension String {
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

//now, we can use this to separate each line into an entry in an array.
let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)
//here, we printed the number of lines using the fact that each line is separated into an array entry.

//we will start with a simple struct:
struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)

//if you want the option to use the auto initializer or a custom initializer, you can use an extension.
extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

//we can add methods to a protocol and make it so any conforming types share those methods.
let guests = ["Mario", "Luigi", "Peach"]

if guests.isEmpty == false {
    print("Guest count: \(guests.count)")
}

if !guests.isEmpty {
    print("Guest count: \(guests.count)")
}

//we can make easier to read code using an extension:
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}
if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}
//if you also want to use the extension on sets or dictionaries, Swift has a grouping for all of them called Collection.

//if we create a simple protocol like this, you can make a default implementation using an extension.
protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

//: [Next](@next)

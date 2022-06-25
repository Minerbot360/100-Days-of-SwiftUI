//: [Previous](@previous)

import Foundation
import Darwin
import os

//creating constants and variables
var name = "Ted"
name = "Rebecca"

let user = "Daphne"

print(user)

//enums
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .friday

//type anotations
var score: Double = 0

//conditions
let age = 16

if age < 12 {
    print("You can't vote")
} else if age < 18 {
    print("You can vote soon")
} else {
    print("You can vote now!")
}

//switch statements
enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("A nice day")
case .rain:
    print("Pack an umbrella")
default:
    print("Should be ok")
}

//ternary conditioal operator
let canVote = age >= 18 ? "Yes" : "No"

//loops
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1 ... 12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1..<13 {
    print("5 x \(i) is \(5 * i)")
}

var lyric = "Haters gonna"

for _ in 1 ... 5 {
    lyric += " hate"
}

print(lyric)

//functions
func printTimesTable(for number: Int) {
    for i in 1 ... 12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(number: 5)

func rollDice() -> Int {
    Int.random(in: 1 ... 6)
}

//returning multiple values from a function
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

//customizing parameter labels
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

//default values for parameters
func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)!")
    } else {
        print("Hi, \(person)")
    }
}

greet("Tim", formal: true)
greet("Taylor")

//handling errors in functions
enum passwordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw passwordError.short
    }
    
    if password == "12345" {
        throw passwordError.obvious
    }
    
    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}

//closures
let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

sayHello("Taylor")

let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})

//trailing closure
let onlyT2 = team.filter {
    $0.hasPrefix("T")
}
    
//structs
struct Album {
    let title: String
    let artist: String
    var isReleased = true
    
    mutating func removeFromSale() {
        isReleased = false
    }
    
    func printSummary() {
        print("\(title) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift")
print(red.title)
red.printSummary()

//computed properties
struct Employee {
    let name: String
    var vacationDaysAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationDaysAllocated - vacationTaken
        }
        
        set {
            vacationDaysAllocated = vacationTaken + newValue
        }
    }
}

//property observers
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3

//custom initializers
struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1 ... 99)
    }
}

//access control
struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

//: [Next](@next)

//: [Previous](@previous)

import Foundation

//Structs let you create more advanced data types with variables and functions.
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year) by \(artist)")
    }
}

//this creates a new type called Album with constants title, artist, and year. It then creates a simple function that brings all of the constants together.

//you can now use Album the same as any other data type.
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

//you can also create structs with values that can change.
struct Employee2 {
    let name: String
    var vacationRemaining = 14
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

//we use the mutating func because the function changes data belonging to the struct
var archer = Employee2(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

//I added a default value to the struct, so if no vacationRemaining value is specified, it will default to 14 days.
var lauren = Employee2(name: "Lauren Smith")
print(lauren.vacationRemaining)

//we can also create a struct with values that are dynamically calculated.
struct Employee3 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}

var william = Employee3(name: "William Lee", vacationAllocated: 14)
william.vacationTaken += 4
print(william.vacationRemaining)
william.vacationTaken += 4
print(william.vacationRemaining)

//if you set vacationRemaining for an employee, what happens? To make sure all of the values line up, we use this:
struct Employee4 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
        
    }
}

var leo = Employee4(name: "Leo Williams", vacationAllocated: 14)
leo.vacationTaken += 4
leo.vacationRemaining = 5
print(leo.vacationAllocated)

//we can use didSet to do something each time a property in a struct is changed.
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
game.score += 1

//in didSet, there is also willSet. They can use the newValue and oldValue respectively to reference the previous and next states of the parameter.
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

//if you want to use a custom intializer, you write the code like this:
struct Player {
    let name: String
    let number: Int

    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}

//using the init, we can add aditional functionality to the initialization code.

//using the custom initializer, you can set things to be anything. This makes the name be set while using the struct while the number is randomly generated:
struct Player2 {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        self.number = Int.random(in: 1 ... 99)
    }
}

let player = Player2(name: "Megan R")
print(player.number)

//: [Next](@next)

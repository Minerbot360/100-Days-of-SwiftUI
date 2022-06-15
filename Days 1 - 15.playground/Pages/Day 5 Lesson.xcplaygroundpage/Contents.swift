//: [Previous](@previous)

import Foundation

//if statements ask if something returns true, then does something if the thing returns true.
if (true) {
    print("doSomething")
}

//here is an example of how an if statement could be used:
let score = 85

if score > 80 {
    print("great job!")
}

//you can also use comparisons with strings, it just sorts them alphabetically.
let ourName = "Dave Listener"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

//you can also use .count on an array to give something to compare.
var numbers = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)

//you can also see if strings are identical using ==
let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

//you can also say if something is not equal to by using !=
let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome, \(name)")
}

//you can see if a string is empty using .isEmpty
var username = ""

if username.isEmpty == true {
    username = "Anonymous"
}

//.isEmpty already returns a boolean, so we don't have to sompare it to anything.
if username.isEmpty {
    username = "Anonymous"
}

//using the else condition, we can funnel falses to do something else.
var age3 = 16

if age3 >= 18 {
    print("You can vote in the next election!")
} else {
    print("Sorry, you're too young to vote :(")
}

//you can also use else if in order to test another condition.
let a = true
let b = false

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if b is true")
} else {
    print("Code to run if both a and b are false")
}

//you can also see if something fits two conditions in two main ways:
let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It is a nice day.")
    }
}

if temp > 20 && temp < 30 {
    print("It is a nice day.")
}

//as you saw, && represents and in a comparison, || represents or in a comparison.

enum transportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = transportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

//we could check conditions like this:
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}

//but this works better, it makes sure that we check for all values and never double check a value.
switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm.")
case .snow:
    print("School is closed.")
case .unknown:
    print("Our forecast generator is broken.")
}

//you can use fallthrough to tell a switch to also run the next case.

let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

//the ternary conditional operator is one more way to check conditions using swift.
let age2 = 18
let canVote = age2 >= 18 ? "Yes" : "No"

//here is another example:
let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

//one more example:
enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

//: [Next](@next)

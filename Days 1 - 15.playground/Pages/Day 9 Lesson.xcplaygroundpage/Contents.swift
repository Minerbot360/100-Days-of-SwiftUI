//: [Previous](@previous)

import Foundation

//you can create a copy of a function by using a variable.
func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

//you can assign functionality directly to a variable like this:
let sayHello = {
    print("Hi there!")
}

sayHello()
//this is called a closure expression. It is essentially a function that takes no parameters and returns nothing.

//if you want your closure expression to accept parameters, you have to write in in a very specific way.
let sayHello2 = { (name: String) -> String in
    "Hi \(name)!"
}

//type annotation for greetUser() is this:
var greetCopy2: () -> Void = greetUser

//Every function has a type, depending on the type of data is sends and recieves
func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)
//We created the function getUserData, then used a type annotation to put that into a variable. Then we used that to get an output from data().

//when using the copy of the function, we don't have to use for: when sending the input.
sayHello2("Liam")

//we have used .sorted() before, but if you want to control a sort, you can do it like this:
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

//we can combine both things to make a closure of this sort.
let captainFirstTeam2 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})

//Swift has several things that help us shorten closures.
let captainFirstTeam3 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1
}
//Here, we shorten the paramaters by using the names provided by Swift using shorthand syntax.

//if you are doing an even simpler operation, you can write it like this:
let reverseTeam = team.sorted { $0 > $1 }

//the filter function allows you to run some code on every item in an array.
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

//the map function allows us to transform every item in an array.
let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

//in Swift, you can make a function that accepts another function as one of its parameters.
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

//This function has two parameters, the length of the array, and the Integer generator.

//I can pass a little function in place of generator in order to make an array.
let rolls = makeArray(size: 50) {
    Int.random(in: 1 ... 20)
}

print(rolls)

//you can also pass a dedicated function like this:
func generateNumber() -> Int {
    Int.random(in: 1 ... 20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

//you can also make a function call multiple functions, these can be specified as dedicated functions when running the command, or as voids to be filled when writing the call line.

//: [Next](@next)

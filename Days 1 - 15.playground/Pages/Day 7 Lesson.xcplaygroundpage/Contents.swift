//: [Previous](@previous)

import Foundation

//functions allow us to shorten frequently used sequences of code into one line using func.
func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

//when we run showWelcome() it will print out the sequence of messages stated in the function.
showWelcome()

//the parentheses next to the function allow you to have inputs into a function. This is shown when we use the .isMultiple function where you input the of:.
let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

//when we make a function, we can take an input like this:
func printTimesTable(number: Int) {
    for i in 1 ... 12 {
        print("\(number) x \(i) is \(number * i)")
    }
}

printTimesTable(number: 5)

//you can also have multiple parameters for a function. Here, I added a second parameter to the printTimesTable() function.
func printTimesTable(number: Int, end: Int) {
    for i in 1 ... end {
        print("\(number) x \(i) is \(number * i)")
    }
}

printTimesTable(number: 5, end: 20)

//you can have a function return data like this:
func rollDice() -> Int {
    return Int.random(in: 1 ... 6)
}

let result = rollDice()
print(result)

//here, we can return a bool by comparing the letters in two strings:
func areTheLettersIdentical(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

let result2 = areTheLettersIdentical(string1: "abc", string2: "cab")
print(result2)

//here is another function for the pythagorean theorem.
func pythagoras(a: Double, b: Double) -> Double{
    let sumOfSquares = a * a + b * b
    return sqrt(sumOfSquares)
}

let result3 = pythagoras(a: 3, b: 4)
print(result3)

//if you want to return multiple values, you can return an array or a dictionary, or you could use a tuple
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("The user's name is \(user.firstName) \(user.lastName)")

//in a function, you can add parameter name to use internally and externally.
func timesTable(for number: Int) {
    for i in 1 ... 12 {
        print("\(number) x \(i) is \(number * i)")
    }
}

timesTable(for: 6)
//: [Next](@next)

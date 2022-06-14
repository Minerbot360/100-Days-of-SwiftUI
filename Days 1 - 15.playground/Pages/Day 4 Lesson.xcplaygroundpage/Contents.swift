//: [Previous](@previous)

import Foundation

//you can specifically define which type of data a variable is supposed to be using this:
let surname: String = "Lasso"
var score: Int = 0

//you could also make a variable as a double even if the number is not a decimal, in case the value could increase later in fractions.
var score2: Double = 0

//these are all of the types of data you could store.
let playerName: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Bool = true

//you can also define the type of data in an array.
var albums: [String] = ["Red", "Fealess"]

//dictionaries can also be defined like this.
var user: [String: String] = ["id": "@minerbot360"]

//you can also use the format used in a previous lesson.
var cities = [String]()

//when using enums, setting a variable to an enum tells the variable that the data will always be a type of the enum
enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

//this means that you don't have to specify the enum when changing the value.
style = .dark

//: [Next](@next)

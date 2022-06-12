//: [Previous](@previous)

//booleans are used to store true or false values
var gameOver = true
var allLivesUsed = false
print(gameOver)
print(allLivesUsed)

//some operators also output booleans
let isMultiple = 120.isMultiple(of: 3)
print(isMultiple)

//the ! means not when dealing with booleans. We can flip the value like this:
print(gameOver)
gameOver = !gameOver
print(gameOver)
gameOver = !gameOver
print(gameOver)

//You can also flip the value using .toggle()
print(gameOver)
gameOver.toggle()
print(gameOver)
gameOver.toggle()
print(gameOver)

//You can join strings together like this:
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart
print(greeting)

//You can also add non-variable strings.
let people = "Haters "
let action = "hate"
let lyric = people + "gonna " + action
print(lyric)

//You can use string interpolation to add strings into the inside of a new string.
let coderName = "Liam"
let age = 13
let message = "Hello, my name is \(coderName) and I'm \(age) years old"
print(message)

//You can't add integers into strings using the +, so you need to tell Swift to treat the int like a string.

//You can put calculations inside of a string interpolation:
print("5 x 5 is \(5 * 5)")

//: [Next](@next)

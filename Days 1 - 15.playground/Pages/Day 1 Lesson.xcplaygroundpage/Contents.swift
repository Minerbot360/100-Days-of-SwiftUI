import UIKit

//You can declare a variable using the var command, followed by the name and data that is to be stored.
var greeting = "Hello, playground"
print(greeting)

//You can change a variable over time, just put the variable's name and set it equal to something new.
var name = "Liam"
print(name)
name = "Leo"
print(name)
name = "Bill"
print(name)

//You can declare constants with the let command, these cannot be changed over time.
let character = "Eloise"
print(character)

//Swift will not let you change a constant. Uncomment the line below to see.
//character = "Bethany"

//If you want to use quotes inside of a string, you must use the backslash before the quote.
let quote = "Bob said, \"The book was incredible!\""
print(quote)

//Create a string across multiple lines using three sets of quotes.
let book = """
Pax
by Sara Pennypacker
"""
print(book)

//Count the length of a string using .count
name = "Brandon"
print(name.count)

//You can also assign the count to a variable or constant.
var nameLength = name.count
print(nameLength)

//Use .uppercased to make every letter in a string uppercased.
name = "Leona"
print(name.uppercased())

//.hasPrefix and .hasSuffix can be used to see if a string starts or ends with specific letters.
let fileName = "photo.jpg"
print(fileName.hasPrefix("photo"))
print(fileName.hasSuffix(".jpg"))

//whole numbers are stored as integers.
var aNumber = 1000000
print(aNumber)

//You can use underscores in place of commas to break up numbers.
var anotherNumber = 1_000_000
print(anotherNumber)

//You can operate directly onto a varible using +=, -=, *=, and /=
aNumber += 2
print(aNumber)
aNumber -= 2
print(aNumber)
aNumber *= 2
print(aNumber)
aNumber /= 2
print(aNumber)

//Swift can find if a number is a multiple of another number with .isMultiple(of: )
let yetAnotherNumber = 27
print(yetAnotherNumber.isMultiple(of: 3))
print(yetAnotherNumber.isMultiple(of: 5))

//decimal numbers are stored as Doubles
let aDouble = 3.14
print(aDouble)

//Swift will not allow Doubles and integers to mix. Uncomment the line to see.
let anInt = 2
//print(anInt + aDouble)

//I can also tell Swift to treat the int as a double or vice-versa.
print(Double(anInt) + aDouble)

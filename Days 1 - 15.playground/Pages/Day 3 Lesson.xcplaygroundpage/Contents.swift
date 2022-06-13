//: [Previous](@previous)

import Foundation

//you can store data in an array using [] to show the list. Items should be separated by commas.
var evenNumbers = [2, 4, 6, 8, 10]
var names = ["John", "Liam", "Paul", "Bob"]

//Swift counts arrays' items starting from 0.
print(names[0])
print(names[2])
print(evenNumbers[3])

//you can add things to an array by using .append
evenNumbers.append(12)
evenNumbers.append(14)

//you can't mix different data types in an array.
//evenNumbers.append(names[0]) does not work.

//you can make an empty array using this:
var scores = Array<Int>()

//you can then append things to add to the array.
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

//you can also make an empty array using this:
var albums = [String]()

//you can use .count to read the number of items in an array.
print(evenNumbers.count)

//you can also remove things from arrays
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

//you can check if an array contains a specific item using contains()
print(evenNumbers.contains(5))
print(evenNumbers.contains(4))

//you can sort arrays using .sorted
print(scores.sorted())

//you can also use .reversed() to reverse the order of items in an array.

//Dictionaries store items in a position decided by the writer.
let employee = [
    "name": "Liam", "job": "student", "location": "Southern California"
]

//you read data from a dictionary based on the label that you give each item, not its place in line.
print(employee["name"])
print(employee["job"])
print(employee["location"])

//if we try to print something that doesn't exist, Swift just won't return a value. You can tell Swift what to return if the data doesn't exist like this:
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

//you can also create an empty dictionary and fill it later.
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

//you have to tell Swift that you want to make a dictionary, as well as what type of data the labels and data will be.

//sets are like simplified arrays. They can be made like this:
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)

//sets store data in a highly efficient way. This means that Swift can easily find things. Sets do not store duplicates.

//you can also create an empty set and add things like this:
var people2 = Set<String>()
people2.insert("Denzel Washington")
people2.insert("Tom Cruise")

//Sets store data in whatever order works best for locating items. This means that you can find if a set includes something super fast.
print(people.contains("Tom Cruise"))

//enums define new data types with a few possible values.
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

//you can now use these just like any other data type.
var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

//you can also make enums like this:
enum daysOfTheWeek {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

//: [Next](@next)

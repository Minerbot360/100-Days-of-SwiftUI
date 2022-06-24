//: [Previous](@previous)

import Foundation

func randomPicker(numbers: [Int]?) -> Int {
    return numbers?.randomElement() ?? Int.random(in: 1 ... 100)
}

let numbers = [7, 12, 15, 28, 34, 40, 72, 83, 86, 91, 98]
//let numbers: [Int]? = []
let theChosenNumber = randomPicker(numbers: numbers)
print(theChosenNumber)

//: [Next](@next)

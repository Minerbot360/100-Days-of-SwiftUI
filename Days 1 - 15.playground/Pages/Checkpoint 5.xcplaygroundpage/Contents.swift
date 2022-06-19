//: [Previous](@previous)

import Foundation

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
print(luckyNumbers)

let oddOnly = luckyNumbers.filter { !$0.isMultiple(of: 2) }

print(oddOnly)

let ascendingNumbers = oddOnly.sorted { $0 < $1 }
print(ascendingNumbers)

let intToString = ascendingNumbers.map { String($0) }
print(intToString)

let finalStrings = intToString.map { $0 + (" is a lucky number") }
for i in 1 ... finalStrings.count {
    print(finalStrings[i-1])
}

//: [Next](@next)

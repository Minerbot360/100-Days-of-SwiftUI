//: [Previous](@previous)

import Foundation

//in Swift, we write loops using the for x in y format.
let platforms = ["iOS", "iPadOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

//what you use in the place of x does not matter.
for thing in platforms {
    print("Swift works great on \(thing).")
}

//you can also loop based on a number, instead of the number of things in an array.
for i in 1 ... 12 {
    print("5 x \(i) is \(5 * i)")
}

//you can also nest loops.
for i in 1 ... 12 {
    print("The \(i) times table:")
    
    for j in 1 ... 12 {
        print("\(i) x \(j) is \(i * j)")
    }
    print()
}

//you can also use < to repeat up to.
for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

//you can also loop adding something to an array.
var lyric = "Haters gonna"

for i in 1 ... 5 {
    lyric += " hate"
}

print(lyric)

//while loops keep repeating until some condition is met.
var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast Off!")

//you can generate random numbers like this:
let aNumber = Int.random(in: 1 ... 1000)
print(aNumber)

let anotherNumber = Double.random(in: 0 ... 1)

//we can create a D20 which keeps rolling until a 20 is rolled.
var roll = 0

while roll != 20 {
    roll = Int.random(in: 1 ... 20)
    print("I rolled a \(roll)!")
}

print("Critical Hit!")

//here, we can use loops to find specific file types:
let filenames = ["leo.jpg", "paper.pdf", "bills.txt", "family.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found photo \(filename)")
}

//here, we can use break in order to find just 10 multiples of two numbers.
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

//: [Next](@next)

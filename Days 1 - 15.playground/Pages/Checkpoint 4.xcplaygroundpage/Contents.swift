//: [Previous](@previous)

import Foundation

enum RootError: Error {
    case outOfBounds, noRoot
}

func findRoot(for number: Int) throws -> Int {
    if number > 10_000 || number < 1 {
        throw RootError.outOfBounds
    }
    for i in 1 ... 100 {
        let square = i * i
        
        if square == number {
            return i
        }
    }
    throw RootError.noRoot
}

let testValue = 99

do {
    let result = try findRoot(for: testValue)
    print("The root is \(result).")
} catch RootError.outOfBounds {
    print("This function accepts values between 1 and 10000")
} catch RootError.noRoot {
    print("This function can only find Integer roots.")
} catch {
    print("There was an error")
}

//: [Next](@next)

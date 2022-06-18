//: [Previous](@previous)

import Foundation

//when specifying parameters in a function, you can set default values to use if the user does not specify when callling the function.
func timesTable(for number: Int, end: Int = 12) {
    for i in 1 ... 12 {
        print("\(number) x \(i) is \(number * i)")
    }
}

timesTable(for: 5, end: 20)
timesTable(for: 8)

//there is a special function to remove all items from an array but keep the memory saved for changes to be made quickly.
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
characters.append("Liam")
print(characters.count)

//we can handle errors from a function using an enum like this:
enum PasswordError: Error {
    case short, obvious
}

//here, we define that two types of errors exist, short and obvious.
//Next, we will create a function that tells a user the strength of a password.
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

//throws -> String specifies that the function can throw errors that it does not handle by itself. When we call a password error, it exits the function and does not return anything.
//we can use do, try, catch to test our function.
let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}

//you can also catch specific errors like this:
do {
    let result2 = try checkPassword(string)
    print("Password rating: \(result2)")
} catch PasswordError.short {
    print("Please use a longer password")
} catch PasswordError.obvious {
    print("Learning your numbers, are you?")
} catch {
    print("There was an error")
}

//: [Next](@next)

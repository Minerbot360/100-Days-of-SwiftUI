//: [Previous](@previous)

import Foundation

//here is a struct with one variable and two methods:
struct BankAccount {
    var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Money withdrawn.")
} else {
    print("Failed to withdraw money.")
}

//because the variable funds is availiable, we can just alter it by ourselves. To prevent this, we add private before the variable name to make it only accessable via the struct. private(set) allows anything to read the value, but only the methods to write to it.
struct BankAccount2 {
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

//using static, it makes the property availiable to all instances of the struct.
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

//when writing actual apps, you can use these static items to store global data.
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}
//this way, you can call AppData.version to get the current version.

//you can also use a static in a struct to have an example to show.
struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}
//this creates an example user that can be shown in a demo.

//: [Next](@next)

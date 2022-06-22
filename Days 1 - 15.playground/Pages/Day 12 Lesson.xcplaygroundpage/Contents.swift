//: [Previous](@previous)

import Foundation

//classes are similar to structs, but they do have a few differences. You can make one like this:
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

//classes allow you to make subclasses that inherit the properties of their parent class.
class Employee {
    let hours: Int

    func printSummary() {
        print("I work \(hours) hours a day.")
    }
    
    init(hours: Int) {
        self.hours = hours
    }
}
//this is our parent class

//here we make two subclasses called Developer and Manager.
class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()
//both keep the number of hours, but also add the function work()

//I also added the function printSummary() to the parent class Employee.
let novall = Developer(hours: 8)
novall.printSummary()
//I also added a new function to the Developer class. Using override, I can make a custom function to replace the one provided by the parent.

//you can make a custom initializer for classes too.
class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

//you can also make a custom sublass of Vehicle like this:
class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}
//Swift will complain if you don't define something for every value. We use super.init to call a method belonging to the parent class.

//we can make an instance of car like this:
let teslaX = Car(isElectric: true, isConvertible: false)

//here is a sample class that I will use:
class User {
    var username = "Anonymous"

    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

//I'll create a simple instance of that class.
var user1 = User()

//now, I'll take a copy of user1.
var user2 = user1
user2.username = "Taylor"

print(user1.username)
print(user2.username)

//I added a new function to User to be able to create a unique copy of the instance.

//deinitializers allow us to run some code when an instance is destroyed, the opposite of an initializer.
class User2 {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

//we can quickly create and delete instances using a loop. Instances are destroyed when the loop finishes.
for i in 1...3 {
    let user = User2(id: i)
    print("User \(user.id): I'm in control!")
}

//instances are deleted when the last reference to them is removed. If you add them to an array as you go, they stay around.
var users = [User2]()

for i in 1...3 {
    let user = User2(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

//classes essentially point something to some underlying data. This can be shown using this code:
class User3 {
    var name = "Paul"
}

var user = User3()
user.name = "Taylor"
user = User3()
print(user.name)
//When we first create the user, the name is equal to "Paul". user does not change, but we then change the undelying data to be "Taylor". When it resets in user = User3(), the value resets to "Paul" again.



//: [Next](@next)

//: [Previous](@previous)

import Foundation

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Woof")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    func speak() {
        print("Meow")
    }
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
}

class Corgi: Dog {
    override func speak() {
        print("Boop")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Arf")
    }
}

class Persian: Cat {
    override func speak() {
        print("Mwow")
    }
}

class Lion: Cat {
    override func speak() {
        print("Rawr")
    }
}

let corgi = Corgi(legs: 4)
let poodle = Poodle(legs: 4)
let persian = Persian(legs: 4, isTame: true)
let lion = Lion(legs: 4, isTame: false)

corgi.speak()
poodle.speak()
persian.speak()
lion.speak()
print(persian.isTame)
print(lion.isTame)

//: [Next](@next)

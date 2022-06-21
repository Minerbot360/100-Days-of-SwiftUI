//: [Previous](@previous)

import Foundation

struct Car {
    let make: String
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear = 1
    
    mutating func gearUp(gears: Int) -> Bool {
        if gears > 6 - currentGear {
            return false
        } else if gears < 0 {
            return false
        } else {
            currentGear += gears
            return true
        }
    }
    
    mutating func gearDown(gears: Int) -> Bool {
        if gears < currentGear - 6 {
            return false
        } else if gears > 6 {
            return false
        } else {
            currentGear -= gears
            return true
        }
    }
}

var santaFe = Car(make: "Hyundai", model: "SantaFe PHEV", numberOfSeats: 5)
print(santaFe.make)
print(santaFe.model)
print(santaFe.numberOfSeats)

santaFe.gearUp(gears: 4)
print(santaFe.currentGear)
santaFe.gearDown(gears: 2)
print(santaFe.currentGear)
//: [Next](@next)

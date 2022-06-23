//: [Previous](@previous)

import Foundation

protocol Building {
    var rooms: Int { get }
    var cost: Int { get set }
    var agent: String { get set }
    var type: String { get set }
    
    func salesSummary()
}

extension Building {
    func salesSummary() {
        print("This \(type) has \(rooms) rooms and is being sold by \(agent) for \(cost).")
    }
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    var type = "house"
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var agent:String
    var type = "office building"
}

let house = House(rooms: 5, cost: 1_000_000, agent: "Bern")
let office = Office(rooms: 20, cost: 6_500_000, agent: "Cory")

house.salesSummary()
office.salesSummary()
//: [Next](@next)

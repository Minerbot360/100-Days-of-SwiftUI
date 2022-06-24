//: [Previous](@previous)

import Foundation

//Swift uses optionals to represent data that might be there or might not.
let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
let peachOpposite = opposites["Peach"]
//when an optional is used, the data type is represented as the data type with a ? at the end.
//Swift returns nil if there is no data.

//to unwrap an optional, we use this if let syntax:
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}
//this code makes our optional into a real string.

//we can also add an else:
var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty")
}

//the difference between an optional and an empty variable, is that an optional has zero data. An empty variable has nothing in the string/array/etc.

//Swift optional safety:
func square(number: Int) -> Int {
    number * number
}

var number2: Int? = nil
//print(square(number: number2))
//uncommenting the above line will show how Swift does not know if there is something in the variable.

//we can unwrap the optional in order to use it like this:
//if let number = number {
    //print(square(number: number))
//}
//the constant number is only created temporarily to be used only within the if let statement.

//we can use guard to unwrap optionals like this:
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

//we can use guard to do something if a variable has no value.
var myVar: Int? = 3

//if let unwrapped = myVar {
    //run if myVar has a value inside
//}

//guard let unwrapped = myVar else {
    //run if myVar has no value inside
//}

//Swift has one last way to unwrap optionals:
//it is called nil coalescing. It provides a default value if it has nothing.
let captains = ["Enterprise": "Picard", "Voyager": "Janeway", "Defiant": "Sisko"]

let new = captains["Serenity"] ?? "N/A"
let new2 = captains["Serenity", default: "N/A"]

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)
//this shows how nil coalescing works with any data type.

let input = ""
let number = Int(input) ?? 0
//print(number)

//optional chaining lets us handle optionals inside of optionals.
let names = ["Arya", "Brian", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")
//this makes the chosen name uppercased if there is one.
//the good thing about this is that it only runs if there is a value, it does this using nil coalescing.

var book2: Book? = nil
let author2 = book2?.author?.first?.uppercased() ?? "A"
print("Author")
//if any of the steps in this fail, it exits and returns the default of "A"

//if we only care if our function fails, we can use an optional.
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

//using optional try, it will just return nil if the function fails.

//we can use nil coalescing to show a default value if a function fails.
let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)
//: [Next](@next)

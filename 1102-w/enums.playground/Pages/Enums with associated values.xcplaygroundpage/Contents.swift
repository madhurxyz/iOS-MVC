//: [Previous](@previous)
class Person {
  let name: String
  
  init(name: String) {
    self.name = name
  }
}

enum MassageChair {
  case free
  case occupied(Person)
}

let nikolas = Person(name: "Nikolas")
let massageChair = MassageChair.occupied(nikolas)

switch massageChair {
case .free:
  print("The chair is currently free.")
case .occupied(let person):
  print("\(person.name) is enjoying an extremyle nice and comforting massage right now. Please don't disturb and wait until it's your turn!")
}

/*:
 
 ### Challenges
 
 1. Model a type called `Box` that is either empty or contains exactly one `Thing`. `Thing` looks as follows:
 ```
 class Thing {
   let name: String
 
   init(name: String) {
     self.name = name
   }
 }
 ```
 2. Create an empty `Box`
 3. Create three different `Box`es, each should contain one item of the following: `Soccer Ball`, `Phone`, `Chocolate`
 4. Write a function that takes a `Box` as an argument and returns a `String` indicating what that `Box` contains.
 5. Make the `Box` _generic_ so that it can contain an object of any type, not just `Thing`.
 */

class Thing {
    let name: String
    
    init(name: String){
        self.name = name
    }
}

enum Box {
    case empty
    case occupied(Thing)
}
let newBox = Box.empty

let soccerBall = Thing(name: "soccer ball")
let phone = Thing(name: "phone")
let chocolate = Thing(name: "chocolate")

let soccerBox = Box.occupied(soccerBall)
let phoneBox = Box.occupied(phone)
let chocolateBox = Box.occupied(chocolate)

func whatsInTheBox(box: Box) -> String {
    switch box {
    case .empty: return "The box is \(box)"
    case .occupied(let thing): return "The box has a \(thing.name)"
    }
}

whatsInTheBox(box: newBox)
whatsInTheBox(box: soccerBox)
whatsInTheBox(box: phoneBox)
whatsInTheBox(box: chocolateBox)







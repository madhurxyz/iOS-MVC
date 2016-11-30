//: [Previous](@previous)

import Foundation

protocol Computable {
    func compute() -> Int
}

class Sum: Computable {
  var numbers = [1,2,3,4,5,6,7,8,9]
    func compute() -> Int {
        var mySum = 0
        for number in numbers {
            mySum += number
        }
        print(mySum)
        return mySum
    }
}

class Product: Computable {
  var numbers = [1,2,3,4,5,6,7,8,9]
    func compute() -> Int {
        var myProduct = 0
        for number in numbers {
            myProduct *= number
        }
        print(myProduct)
        return myProduct
    }
}

class CountCharacters: Computable {
  var string: String = "odinfeoivneflndwcnervbunlinwe;dqwmid"
    func compute() -> Int {
        let myString = string.characters.count
        print(myString)
        return myString
    }
}

class Random: Computable {
    var random: String = "asdfasdfasdfasdfasdfa"
    func compute() -> Int {
        let myRandom = Int(arc4random())
        print(myRandom)
        return myRandom

    }
}

var sum = Sum()
let product = Product()
let countCharacters = CountCharacters()
let random = Random()

let arrayOfComputables: [Computable] = [sum, product, countCharacters, random]
for computable in arrayOfComputables {
    print(computable.compute())
}

/*:
 **Tasks**: 
 1. Uncomment above line and make the code compile (by implementing the `Computable` protocol in all the classes)
 2. Iterate over `arrayOfComputables`, _compute_ each result and print it to the console using `print`
 */


//: [Previous](@previous)

import Foundation

// implicit assignment of raw values
enum Face1: String {
  case happy
  case sad
  case nerd
}
Face1.happy.rawValue

// explicit assignment of raw values
enum Face2: String {
  case happy = ":-)"
  case sad = ":-("
  case nerd = "8-)"
}
Face2.happy.rawValue

// implicit assignment of raw values
enum Weekday1: Int {
  case monday
  case tuesday
  case wednesday
  case thursday
  case friday
  case saturday
  case sunday
}
Weekday1.monday.rawValue

// explicit assignment of raw values
enum Weekday2: Int {
  case monday = 1
  case tuesday
  case wednesday
  case thursday
  case friday
  case saturday
  case sunday
}
Weekday2.monday.rawValue


/*:
 
 ### Challenges
 
 1. Model a type called `CardinalDirection` using an `enum`. What could be the different _values_ for this type?
 2. Write a function called `help`, that takes a value of type `CardinalDirection` and returns a `String`. This function is supposed to help a lost ship on an ocean to find its way back home (it needs to go north-east). The return value of the function should indicate whether the value that was passed in helps the ship to get home. Use an *arrow unicode character* (`→`, `←`, `↑`, `↓`) in the returned `String` to illustrate the direction on a map, e.g.: `This direction (↓) does not help the ship to get home.`
 3. Model a type called `Month` using an `enum`. That type should represent all the different months in one year. 
 4. Write a function that returns a `String` and indicates at which position this month is inside a year, e.g.: `March is the 3rd month of the year`.
 */
enum CardinalDirection: String {
    case north = "↑"
    case northEast = "↑→"
    case northWest = "←↑"
    case east = "→"
    case west = "←"
    case southEast = "↓→"
    case southWest = "←↓"
    case south = "↓"
}

func help(direction: CardinalDirection) -> String {
    switch direction {
    case .north, .northWest, .east, .west, .southEast, .southWest, .south: return "This direction \(direction.rawValue) does not help the ship go home."
    case .northEast: return "This direction \(direction.rawValue) helps the ship go home."
    }
}

help(direction: .north)
help(direction: .south)
help(direction: .east)
help(direction: .west)

help(direction: .northWest)
help(direction: .southWest)
help(direction: .southEast)
help(direction: .northEast)

enum Month: Int {
    case January = 1
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
}

func whichMonth(month: Month) -> String {
    switch month {
    case .January: return "This is the \(month.rawValue)st month of the year"
    case .February: return "This is the \(month.rawValue)nd month of the year"
    case .March: return "This is the \(month.rawValue)rd month of the year"
    default: return "This is the \(month.rawValue)th month of the year"
    }
}

whichMonth(month: .January)
whichMonth(month: .February)
whichMonth(month: .March)
whichMonth(month: .June)
whichMonth(month: .December)










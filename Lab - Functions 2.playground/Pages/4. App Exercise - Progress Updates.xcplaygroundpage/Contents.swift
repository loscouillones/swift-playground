/*:
 ## App Exercise - Progress Updates
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 In many cases you want to provide input to a function. For example, the progress function you wrote in the Functioning App exercise might be located in an area of your project that doesn't have access to the value of `steps` and `goal`. In that case, whenever you called the function, you would need to provide it with the number of steps that have been taken and the goal for the day so it can print the correct progress statement.
 
 Rewrite the function `progressUpdate`, only this time give it two parameters of type `Int` called `steps` and `goal`, respectively. Like before, it should print "You're off to a good start." if steps is less than 10% of goal, "You're almost halfway there!" if steps is less than half of goal, "You're over halfway there!" if steps is less than 90% of goal, "You're almost there!" if steps is less than goal, and "You beat your goal!" otherwise. Call the function and observe the printout.
 
 Call the function a number of times, passing in different values of `steps` and `goal`. Observe the printouts and make sure what is printed to the console is what you would expect for the parameters passsed in.
 */
func progressUpdate(steps: Int, goal: Int) {
    if Double(steps) < Double(goal) * 0.1 {
        print("Vous partez du bon pied")
    } else if Double(steps) < Double(goal) / 2 {
        print("Vous êtes presque à mi-chemin")
    } else if Double(steps) < Double(goal) * 0.9 {
        print("Vous y êtes presque!")
    } else if steps < goal {
        print("Vous batterez votre objectif!")
    }
}

progressUpdate(steps: 1000, goal: 5000)
progressUpdate(steps: 4000, goal: 5000)
progressUpdate(steps: 100, goal: 3000)

/*:
 Your fitness tracking app is going to help runners stay on pace to reach their goals. Write a function called pacing that takes four `Double` parameters called `currentDistance`, `totalDistance`, `currentTime`, and `goalTime`. Your function should calculate whether or not the user is on pace to hit or beat `goalTime`. If yes, print "Keep it up!", otherwise print "You've got to push it just a bit harder!"
 */
func pacing(currentDistance:Double, totalDistance:Double, currentTime:Double, goalTime:Double) {
    let estimatedGoalTime = (totalDistance * currentTime) / currentDistance
    
    if estimatedGoalTime <= goalTime {
        print("Keep it up!")
    } else {
        print("You've got to push it just a bit harder!")
    }
}

pacing(currentDistance: 1, totalDistance: 10, currentTime: 4, goalTime: 50)

import Foundation

// allows to throw "msg"
extension String: Error {}

// checks that unit matches(/K|F|C/)
func validUnit(_ unit: String) -> Bool {
    return unit.range(of:"K|C|F", options:.regularExpression, range: nil, locale: nil) != nil
}

/**
 * converts a value from one unit to another unit
 * @returns Double
 **/
func convert(_ value: Double, from unitFrom: String, to unitDest: String) throws -> Double {
    if !validUnit(unitFrom) || !validUnit(unitDest) {
        throw "Unit must be: K|C|F"
    } else {
        switch(unitFrom) {
        case ("K"):
            if (unitDest == "F") {
                return (value - 273.15) * (9/5) + 32
            } else if unitDest == "C" {
                return value - 273.15
            } else {
                return value
            }
        case "F":
            if (unitDest == "K") {
                return (value - 32) * (5/9) + 273.15
            } else if (unitDest == "C") {
                return (value - 32) * (5/9)
            } else {
                return value
            }
        case "C":
            if (unitDest == "K") {
                return value + 273.15
            } else if (unitDest == "F") {
                return (value * (9/5)) + 32
            } else {
                return value
            }
        default:
            return 0
        }
    }
}

func doConvert(_ value: Double, from unitFrom: String, to unitDest: String) {
    var res:Double
    
    do {
        try res = convert(value, from: unitFrom, to: unitDest)
        print("\(value)\(unitFrom) = \(res)\(unitDest)")
    } catch let err {
        print(err)
    }
}

doConvert(100, from: "C", to: "K")
doConvert(100, from: "C", to: "C")
// from: K
doConvert(0, from: "K", to: "C")
doConvert(30.6, from: "K", to: "F")
doConvert(30.6, from: "K", to: "K")
// from: F
doConvert(0, from: "F", to: "C")
doConvert(30.6, from: "F", to: "K")
doConvert(30.6, from: "F", to: "F")

// bad format
doConvert(28.4, from: "DT", to: "C")

// random numbers
let randomInt = Int.random(in: 1..<5)

var numbers = [1,2,3]
var array = [1,2,3]
array.insert(4, at: array.count)
print(array)




//: [Previous](@previous)  |  page 4 of 6  |  [Next: Exercise - Return Values](@next)

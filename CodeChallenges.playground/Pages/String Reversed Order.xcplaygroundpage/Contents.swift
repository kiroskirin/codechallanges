import UIKit
import Foundation

/**
Have the function FirstReverse(str) take the str parameter being passed and return the string in reversed order. For example: if the input string is "Hello World and Coders" then your program should return the string sredoC dna dlroW olleH.

Use the Parameter Testing feature in the box below to test your code with different arguments.
 
 **= Sample Test Cases =**
 
 - Input: "coderbyte"
 - Output: "etybredoc"
 
 - Input: "I Love Code"
 - Output: "edoC evoL I"

 */

func firstReverse(_ str: String) -> String {
    return String(str.characters.reversed())
}


firstReverse("coderbyte") // Should be "etybredoc"
firstReverse("I Love Code") // Should be "edoC evoL I"


//: [Next](@next)

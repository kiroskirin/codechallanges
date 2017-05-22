//: [Previous](@previous)

import Foundation

/**
 **= Challenge ==**
 
 Using the Swift language, have the function FirstFactorial(num) take the num parameter being passed and return the factorial of it (e.g. if num = 4, return (4 * 3 * 2 * 1)). For the test cases, the range will be between 1 and 18 and the input will always be an integer.
 
 **= Sample Test Cases =**
 
 - Input:4
 - Output:24
 
 - Input:8
 - Output:40320
 
 `https://coderbyte.com/editor/guest:First%20Factorial:Swift`
 
 */

func firstFactorial(_ num: Int) -> Int {
    return (1...num).reduce(1) { $0 * $1 }
}

firstFactorial(4) // Should be 14
firstFactorial(8) // Should be 40320

//: [Next](@next)


import UIKit
import Foundation

/**
 We'll pass you an array of two numbers. Return the sum of those two numbers and all numbers between them.
 
 The lowest number will not always come first.
 
 Remember to use Read-Search-Ask if you get stuck. Try to pair program. Write your own code.
 
 Here are some helpful links:
 
 - `Math.max()`
 
 - `Math.min()`
 
 - `Array.reduce()`
 
 `https://www.freecodecamp.com/challenges/sum-all-numbers-in-a-range`
 
 */

func sumAll(arr: [Int]) -> Int {
    guard let min = arr.min(), let max = arr.max() else { return 0 }
    return (min...max).reduce( 0, + )
}

sumAll(arr: [1, 4]) // Should be 10
sumAll(arr: [4, 1]) // Should be 10
sumAll(arr: [5, 10]) // Should be 45
sumAll(arr: [10, 5]) // Should be 45

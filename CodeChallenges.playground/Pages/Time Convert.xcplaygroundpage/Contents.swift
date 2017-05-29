import UIKit
import Foundation

/**
 # Challenge
 Using the Swift language, have the function TimeConvert(num) take the num parameter being passed and return the number of hours and minutes the parameter converts to (ie. if num = 63 then the output should be 1:3). Separate the number of hours and minutes with a colon.
 # Sample Test Cases
 
 Input: 126
 
 Output:"2:6"
 -
 
 Input: 45
 
 Output:"0:45"
 -
 */

func timeConvert(_ num: Int) -> String {
    return num < 60 ? "0:\(num % 60)" : "\(num / 60):\(num % 60)"
}

timeConvert(126) // Should be "2:6"
timeConvert(45) // Should be "0:45"
import UIKit
import Foundation

/**
 # Challenge
 Using the Swift language, have the function CheckNums(num1,num2) take both parameters being passed and return the string true if num2 is greater than num1, otherwise return the string false. If the parameter values are equal to each other then return the string -1.
 # Sample Test Cases
 
 Input: num1 = 3 & num2 = 122
 
 Output:"true"
 -
 
 Input: num1 = 67 & num2 = 67
 
 Output:"-1"
 -
 
 */

func checkNums(_ num1: Int, _ num2: Int) -> String {
    return num2 == num1 ? "-1" : num2 > num1 ? "true" : "false"
}

checkNums(3, 122) // Should be "true"
checkNums(67, 67) // Shoule be "-1"

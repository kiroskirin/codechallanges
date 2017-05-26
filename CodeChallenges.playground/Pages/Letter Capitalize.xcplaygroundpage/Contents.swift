import UIKit
import Foundation

/**
 # Challenge
 Using the Swift language, have the function LetterCapitalize(str) take the str parameter being passed and capitalize the first letter of each word. Words will be separated by only one space.
 
 # Sample Test Cases
 
 Input: "hello world"
 
 Output: "Hello World"
 -
 Input: "i ran there"
 
 Output: "I Ran There"
 -
 
 [Ref](https://coderbyte.com/editor/Letter%20Capitalize:Swift)
 
 */

func letterCapitalize(_ str: String) -> String {
    return str.capitalized
}

letterCapitalize("hello world") // Should be "Hello World"
letterCapitalize("i ran there") // Should be "I Ran There"

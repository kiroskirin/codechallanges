import UIKit
import Foundation

/**
 # Challenge
 Using the Swift language, have the function AlphabetSoup(str) take the str string parameter being passed and return the string with the letters in alphabetical order (ie. hello becomes ehllo). Assume numbers and punctuation symbols will not be included in the string.
 # Sample Test Cases
 
 Input: "coderbyte"
 
 Output: "bcdeeorty"
 -
 
 Input: "hooplah"
 
 Output: "ahhloop"
 -
 */

func alphabetSoup(_ str: String) -> String {
    return String(str.characters.sorted())
}

alphabetSoup("coderbyte") // Should be "bcdeeorty"
alphabetSoup("hooplah") // Should be "ahhloop"

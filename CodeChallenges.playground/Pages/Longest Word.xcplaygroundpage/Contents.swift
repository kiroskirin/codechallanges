import UIKit
import Foundation

/**
 # Challenge
 Using the Swift language, have the function LongestWord(sen) take the sen parameter being passed and return the largest word in the string. If there are two or more words that are the same length, return the first word from the string with that length. Ignore punctuation and assume sen will not be empty.
 
 # Sample Test Cases
 Input: "fun&!! time"
 
 Output: "time"
 
 
 Input: "I love dogs"
 
 Output: "love"
 
 [Ref](https://coderbyte.com/editor/Longest%20Word:Swift)
 
 */

func longestWord(_ sen: String) -> String {
    return sen.components(separatedBy: .punctuationCharacters)
        .joined()
        .components(separatedBy: .whitespacesAndNewlines)
        .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
        .filter { return !$0.isEmpty }
        .max { a, b in return a.characters.count < b.characters.count } ?? ""
}

longestWord("fun&! time") // Should be "time"
longestWord("I love dogs") // Should be "love"

import UIKit
import Foundation

/**
 Using the Swift language, have the function LetterChanges(str) take the str parameter being passed and modify it using the following algorithm. Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a). Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string.
 
 **= Sample Test Cases =**
 
 - Input: "hello*3"
 - Output: "Ifmmp*3"
 
 - Input: "fun times!"
 - Output: "gvO Ujnft!"
 
 `https://coderbyte.com/editor/Letter%20Changes:Swift`
 */

func letterChanges(_ str: String) -> String {
    // ASCII value
    var x = str.unicodeScalars
        .filter { $0.isASCII }
        .map {  ( $0.value >= 97 && $0.value <= 122) ? $0.value + 1
                : $0.value == 97 ? 122
                : $0.value == 122 ? 97
                : $0.value
        }
        .map { Character( UnicodeScalar($0)! ) }
    
    func replaceVowel(arr: inout [Character]) {
        for i in 0..<arr.count {
            switch arr[i] {
            case "a":
                arr[i] = "A"
            case "e":
                arr[i] = "E"
            case "i":
                arr[i] = "I"
            case "o":
                arr[i] = "O"
            case "u":
                arr[i] = "U"
            default: break
            }
        }
    }
    
    replaceVowel(arr: &x)
    
    return String(x)
    //        .replacingOccurrences(of: "a", with: "A")
    //        .replacingOccurrences(of: "e", with: "E")
    //        .replacingOccurrences(of: "i", with: "I")
    //        .replacingOccurrences(of: "o", with: "O")
    //        .replacingOccurrences(of: "u", with: "U")
}

letterChanges("hello*3") // Should be "Ifmmp*3"
letterChanges("fun times!") // Should be "gvO Ujnft!"

import UIKit
import Foundation

/**
 # Challenge
 Using the Swift language, have the function SimpleSymbols(str) take the str parameter being passed and determine if it is an acceptable sequence by either returning the string true or false. The str parameter will be composed of + and = symbols with several letters between them (ie. ++d+===+c++==a) and for the string to be true each letter must be surrounded by a + symbol. So the string to the left would be false. The string will not be empty and will have at least one letter.
 
 # Sample Test Cases
 
 Input:"+d+=3=+s+"
 
 Output:"true"
 -
 
 Input:"f++d+"
 
 Output:"false"
 -
 
 [Ref](https://coderbyte.com/editor/Simple%20Symbols:Swift)
 
 */

func simpleSymbols(_ str: String) -> String {
    
    if str.characters.count < 2 || !str.contains("+") || str.isEmpty { return "false" }
    
    let correctPattern = try! NSRegularExpression(pattern: "\\+[a-z]\\+", options: .caseInsensitive)
    let falsePattern = try! NSRegularExpression(pattern: "\\+[a-z]|[a-z]\\+", options: .caseInsensitive)
    
    let leftString = correctPattern.stringByReplacingMatches(in: str, options: .withTransparentBounds, range: NSMakeRange(0, str.characters.count), withTemplate: "0")
    
    if !falsePattern.matches(in: leftString, options: .withTransparentBounds, range: NSMakeRange(0, leftString.characters.count)).isEmpty {
        return "false"
    } else {
        return "true"
    }
}

simpleSymbols("+d+=3=+s+") // Should be "true"
simpleSymbols("f++d+") // Should be "false"


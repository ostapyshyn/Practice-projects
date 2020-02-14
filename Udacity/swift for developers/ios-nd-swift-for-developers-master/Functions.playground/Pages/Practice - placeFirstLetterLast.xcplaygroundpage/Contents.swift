//: [Previous](@previous)
import Foundation

// TODO: Implement placeFirstLetterLast() here!
func firstCharacter(of word: String) -> Character {
    return word[word.startIndex]
}

firstCharacter(of: "Mom")


func placeFirstLetterLast(_ myString: String) -> String {
    var myString = myString
    myString.append(firstCharacter(of: myString))
    myString.remove(at: myString.startIndex)
    return myString
}

placeFirstLetterLast("Mom")
//: [Next](@next)

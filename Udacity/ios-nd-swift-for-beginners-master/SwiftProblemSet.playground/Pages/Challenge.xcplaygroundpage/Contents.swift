//: [Previous](@previous)

import Foundation
//: ### Exercise 18
//: Mystery code! What does this code do? Briefly, using a few words per line, describe what is happening in each line.

let array = ["A", "13", "B","5","87", "t", "41"] // array of data
var sum = 0
for string in array { // checks all data in array if it a number and sums it
    if Int(string) != nil {
        let intToAdd = Int(string)!
        sum += intToAdd
    }
}
print(sum)

//: Hint: You may need to look up [Int initializers](http://stackoverflow.com/questions/30739460/toint-removed-in-swift-2) .
func madLibGenerator(adjective: String, adverb: String, plural: String) -> String {
    return "I have been \(adverb) learning how to build \n\(adjective) app with Udacity. I hope they teach me \nabout \(plural) soon that whould be helpful"
}

let test = madLibGenerator(adjective: "nice", adverb: "lol", plural: "books")
print(test)

//: [Next](@next)

import UIKit

var str = "Hello, playground"
var allowed = CharacterSet()
allowed.insert(charactersIn: "!@#$%&")

func shortNameFromName(name: String) -> String {
    //let lowercaseName = name.lowercased()
    let vowelSet = CharacterSet(charactersIn: "aeiou")
    
    if name.prefix(1).rangeOfCharacter(from: vowelSet) != nil {
        print("yes")
        return name
    } else {
        var name1 = name
        name1.remove(at: name1.startIndex)
        return name1
    }
}

shortNameFromName(name: "Talia")

let bananaFanaTemplate = [
"<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
"Banana Fana Fo F<SHORT_NAME>",
"Me My Mo M<SHORT_NAME>",
"<FULL_NAME>"].joined(separator: "\n")

func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    
    let shortname:String = shortNameFromName(name: fullName)
    
    let result = [ "\(fullName), \(fullName), Bo B\(shortname)",
    "Banana Fana Fo F\(shortname)",
    "Me My Mo M\(shortname)",
    "\(fullName)"].joined(separator: "\n")
    
    return result
}

let see = lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: "Nate")

    

print(see)

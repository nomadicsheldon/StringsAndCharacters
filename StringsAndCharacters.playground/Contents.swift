import UIKit

/*
 strings are value type
 */


// String Literals

let someString = "Himanshu"

//----------------------------------------------------------------------------------------------------------//

// Multiline String Literals

let quotation = """

Himanshu Rajput is an iOS developer.\
He is a good candidate




"""
let name = "shivanshu"

//print(someString, quotation, name)

//----------------------------------------------------------------------------------------------------------//

// Special Characters in String Literals

let wineWords = "\"Imagination is more important than knowledge\"- Himanshu"
let dollarSign = "\u{24}, \u{2665}, \u{1F496}"
//print(wineWords, dollarSign)

let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""\
Escaping all three quotation marks \"\"\"
"""
//print(threeDoubleQuotationMarks)

//----------------------------------------------------------------------------------------------------------//

// Extending String Delimiters

let threeMoreDoubleQuotationMarks = #"""
Here are three more\n double quotes:"""
"""#
//print(threeMoreDoubleQuotationMarks)

//----------------------------------------------------------------------------------------------------------//

// Itetializing as Empty String

var emptyString = ""  // empty string literal
var anotherEmptyString = String() // initializer syntax
// these two strings are both empty, and are equivalent to each other

// checking string empty
if emptyString.isEmpty {
//    print("Nothing to see here")
}

//----------------------------------------------------------------------------------------------------------//

// String Mutability

var variableString = "Horse"
variableString += " and carriage"

//let constantString = "Highlander"
//constantString += " and another Highlander"

//----------------------------------------------------------------------------------------------------------//

// Working with characters

for character in "Dog!" {
    print(character)
}

let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "!"]
let catString = String(catCharacters)
//print(catString)

//----------------------------------------------------------------------------------------------------------//

// Concatenating Strings and characters

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
print(welcome)

var instruction = "look over"
instruction += string2
print(instruction)

welcome.append(exclamationMark)

let badStart = """
one
two
"""

let end = """
three
"""

print(badStart+end)

let goodStart = """
one
two

"""
print(goodStart+end)

//----------------------------------------------------------------------------------------------------------//

// String Interpolation

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier)*2.5)"
print(message)

// you can use extended string delimiters to create strings containing characters that would otherwise be treated as a string interpolation.
print(#"write an interpolated string in swift using \(multiplier)"#)

// To use string interpolation inside a string that uses extended delimiters
print(#"6 times 7 \#(6*7)"#)

//----------------------------------------------------------------------------------------------------------//

/* Unicode

 A unicode scalar value is a unique 21-bit number for a character or modifier, such as U+0061 for ("a") or U+1F425 is for front-facing baby chick.
 */

// Extended Grapheme Clusters - read from documentation

//----------------------------------------------------------------------------------------------------------//

// Counting Characters

let word = "cafe"
print(word.count)

//----------------------------------------------------------------------------------------------------------//

// Accessing and Modifying a String

let greeting = "Himanshu Rajput"

//print(greeting[greeting.startIndex])
//print(greeting[greeting.index(before: greeting.endIndex)])
//print(greeting[greeting.index(after: greeting.startIndex)])
//print(greeting[greeting.index(greeting.startIndex, offsetBy: 11)])

for index in greeting.indices {
    print(greeting[index])
}

//----------------------------------------------------------------------------------------------------------//

// inserting and removing

var welcomeAgain = "Hello"
welcomeAgain.insert("!", at: welcomeAgain.endIndex)
print(welcomeAgain)
welcomeAgain.insert(contentsOf: " there", at: welcomeAgain.index(before: welcomeAgain.endIndex))
print(welcomeAgain)
welcomeAgain.remove(at: welcomeAgain.index(before: welcomeAgain.endIndex))
print(welcomeAgain)
let range = welcomeAgain.index(welcomeAgain.endIndex, offsetBy: -6) ..< welcomeAgain.endIndex
welcomeAgain.removeSubrange(range)
print(welcomeAgain)

//----------------------------------------------------------------------------------------------------------//

//Substrings
let greetingAgain = "Hello, world!"
let index = greetingAgain.firstIndex(of: ",") ?? greetingAgain.endIndex
let beginnig = greetingAgain[..<index]
print("begining", beginnig)

//----------------------------------------------------------------------------------------------------------//

// comparing Strings
/* operator
 ==
 !=
 */
// Read from documentation

//----------------------------------------------------------------------------------------------------------//

// Prefix and Suffix equality

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1Count = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1Count += 1
    }
}

print("There are \(act1Count) scenes in Act 1")
var mansion = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("mansion") {
        mansion += 1
    }
}
print("mansion scenes: \(mansion)")

//----------------------------------------------------------------------------------------------------------//

// Unicode representation of strings

/*
 UTF-8 = 8-bit code unit
 UTF-16 = 16-bit code unit
 UTF-32 = 32-bit code unit
 */

// UTF-8 representation

let myName = "Himanshu Rajput!!"
for codeUnit in myName.utf8 {
    print("\(codeUnit) ", terminator: "")
}

for codeUnit in myName.utf16 {
    print("\(codeUnit) ", terminator: "")
}

for scalar in myName.unicodeScalars {
    print("\(scalar)")
}

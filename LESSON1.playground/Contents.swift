//: Playground - noun: a place where people can play

import UIKit


//let and var
var str = "Hello, playground"
let number = 10
print(number)
print(str)
str="hello, Son"
print(str)


// tuple
var tuple = (key:"son",value1:"23", value2:"bk")
print("key la: \(tuple.key), gia tri 1 la: \(tuple.value1), gia tri 2 la: \(tuple.value2)" )
var(ten,tuoi,truong)=tuple
print("ten la: \(ten), tuoi la: \(tuoi), truong la: \(truong)" )


// Optional
var year = "1995"
var name = "son"
var convertyear=Int(year)
var convertname=Int(name)


// Forced Unwrapping

if(convertyear != nil){
    print(convertyear!)
}

// Optional binding

if let a = convertyear{
    print("\"\(a)\" has an value of \(convertyear)")
}

// Implicitly Unwrrapped Optionals

let possibleString: String? = "optional"
let forcedString: String = possibleString!

let assumedString: String! = "implicitly unwrapped optional"
let implicitString: String = assumedString


// Assertor and precondition
let age = 3
assert(age >= 0, "A person's age can't be less than zero.")

precondition(age > 0, "Index must be greater than zero.")

// String

let lectrues = "dong son"


//String indices

year[year.startIndex]
year[year.index(before: year.endIndex)]
year[year.index(after: year.startIndex)]
let character3 = year[year.index(year.startIndex, offsetBy: 3)]


// Insert and removing

// subString

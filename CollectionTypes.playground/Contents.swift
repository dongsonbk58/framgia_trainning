//: Playground - noun: a place where people can play

import UIKit

//array

//create array empty
var someExamples=[Int]()

//create array with default values
var defaultArray1 = Array(repeating: 3, count: 3)

// create array by adding multi arrays
var defaultArray2 = Array(repeating: 4, count: 3)
var defaultArray3 = defaultArray1 + defaultArray2

//add value to array
someExamples.append(3)



//create array literal
let literalArray = ["a","b","c"]
//access and modify array
print(literalArray)
defaultArray3[2...4]
defaultArray3.insert(5, at: 0)
defaultArray3.remove(at: 1)
defaultArray3.last
defaultArray3.index(after: 4)



//set
//create set
var name = Set<String>()
var name1 :Set<String> = ["son","nam","nam"]
var number: Set = ["3", "6", "5"]
//add element
name.insert("son")
name.insert("nam")
name.insert("son")
print(name)

//access and modify set
let removeEx = number.remove("3")
print(number)
number.sorted()

// fundamental set operations
let Digits1: Set = [1, 3, 5, 7, 9]
let Digits2: Set = [0, 2, 4, 6, 8]
let Digits3: Set = [2, 3, 5, 7]
let Digits4: Set = [1, 3]
let Digits5: Set = [10, 11]
// hop
Digits1.union(Digits2).sorted()
// giao
Digits1.intersection(Digits2).sorted()
//khac
Digits1.subtracting(Digits3).sorted()
//khac cua ca 2
Digits1.symmetricDifference(Digits3).sorted()
Digits4.isSubset(of: Digits1)
Digits1.isSuperset(of: Digits4)
Digits5.isDisjoint(with: Digits1)



//dictionary

//create dic
var dic = [Int:String]()
var dic1:[Int:String] = [1:"mot",2:"hai",3:"ba"]

//access and modify
print(dic1)
print(dic1[2] ?? 0)
dic1.updateValue("a", forKey: 1)
print(dic1)

//interating over dictionary
let key = [Int](dic1.keys)
let value = [String](dic1.values)
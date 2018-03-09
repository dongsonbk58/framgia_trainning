//: Playground - noun: a place where people can play

import UIKit

//if
if let a = Int("42"){
    print(a)
}else{
    print("nil")
}


//for-in loop
let numbers = [1,2,3,4,5,6,7]
let dic:[Int:String]=[1:"one",2:"two",3:"three"]
for number in numbers {
    print(number)
}
for (keydic,value) in dic{
    print("\(keydic) and \(value)")
}

for index in 1...5 {
    print(index)
}

//while loop
var number = 0
while number < 7{
    number+=1
}

var number1 = 0
repeat{
    print("a")
    number1+=1
}while(number1<7)


//guard let

func hello(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location).")
}

hello(person: ["name": "son"])
hello(person: ["name": "son", "location": "VN"])




//switch-case

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}

//switch-case value bindings
let point = (2,0)
let point1 = (0,5)
let point2 = (5,5)
switch point {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

switch point1 {
case (let x, 0), (0, let x):
    print("On an axis, \(x) from the origin")
default:
    print("Not on an axis")
}

switch point2 {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}



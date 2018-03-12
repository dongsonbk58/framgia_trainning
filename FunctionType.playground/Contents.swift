//: Playground - noun: a place where people can play

import UIKit


//create funtion
func sayHello(name: String ) -> String
{
    let stringHello = "Hello"+name+"!"
    return stringHello
}

// using inout when change value of parameter and using
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func addTwoInts(_ a: Int,_ b: Int) -> Int{
    let add = a+b
    return add
}


//funtion type as parameter of function
var mathFunction: (Int, Int) -> Int = addTwoInts
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) -> Int{
    return mathFunction(a, b)
}


func stepBackward1(_ input: Int) -> Int {
    return input - 1
}

func stepBackward2(_ input: Int) -> Int {
    return input - 2
}

// function type as return type
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward1 : stepBackward2
}



var a = 4
var b = 5
print(sayHello(name: "nam"))
swapTwoInts(&a, &b)
print("\(a) + \(b)")
print(addTwoInts(a, b))
print(printMathResult(addTwoInts, a, b))

//creat function = function and run
var stepBackward = chooseStepFunction(backward: a > 0)
while a != 0 {
    print("\(a)... ")
    a = stepBackward(a)
}


// nested funtion
func chooseFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}



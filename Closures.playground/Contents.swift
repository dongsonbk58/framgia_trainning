//: Playground - noun: a place where people can play

import UIKit


//create closure expression
func demoClosures(_ name : String , _ age: Int,_ closuresParam: (String,Int) -> Void){
    closuresParam(name,age)
}

demoClosures("Son", 23, {(string, int) in
    print("\(string) +++ \(int)")
})

var demoArray = [1,8,3,11,5,6,7,8,9]
let sortArray = demoArray.sorted(){$0>$1}
print(sortArray)


//demo HOFs
let doubledMapNumbers = demoArray.map { $0 * 2 }
print(doubledMapNumbers)

let filteredNumbers = demoArray.filter { $0 > 3 }
print(filteredNumbers)

demoArray.forEach { print($0) }

let reducedNumber = demoArray.reduce(0) { $0 + $1 }
print(reducedNumber)

let flatMappedNumbers = demoArray.flatMap { $0 }
print(flatMappedNumbers)



//capture values

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

func demoCaptureValues(forStudent age: Int)-> () -> Int{
    var year = 0
    func countAge() -> Int{
        year = 2018 - age
        print(year)
        return year
    }
    return countAge
}



let a = demoCaptureValues(forStudent: 30)
a()

let b = makeIncrementer(forIncrement: 10)
b()



//
//  main.swift
//  calculator-v2
//
//  Created by Jennifer Kang.
//  Copyright © 2016 Jennifer Kang. All rights reserved.
//

import Foundation


/********* Build A Calculator *********/

//Four Basic Operations
func add(x : Int, y : Int) -> Int {
    return x + y
}

func subtract(x : Int, y : Int) -> Int {
    return x - y
}

func multiply(x : Int, y : Int) -> Int {
    return x * y
}

func divide(x : Int, y : Int) -> Int {
    return x / y
}

//Function that expects one of them along with two Ints
func genericFunction(x : Int, y : Int, op : (Int, Int) -> Int) -> Int {
    return op(x, y);
}

func testBuildCalculatorFunctions() {
    print("Testing the four basic operations:")
    var total = add(4, y : 5)
    print("\t - Addition: 4 + 5 = \(total)")
    
    total = subtract(10, y: 22)
    print("\t - Subtraction: 10 - 22 = \(total)")
    
    total = multiply(7, y: 9)
    print("\t - Multiplication: 7 * 9 = \(total)")
    
    total = divide(225, y: 15)
    print("\t - Division: 225 / 15 = \(total)")
    
    print()
    
    /* Generic Function */
    print("Testing genericFunction:")
    total = genericFunction(10, y : 5, op: add)
    print("\t - Addition: 10 + 5 = \(total)")
    
    total = genericFunction(10, y : 5, op: subtract)
    print("\t - Subtraction: 10 - 5 = \(total)")
    
    total = genericFunction(10, y : 5, op: multiply)
    print("\t - Multiply: 10 * 5 = \(total)")
    
    total = genericFunction(10, y : 5, op: divide)
    print("\t - Divide: 10 / 5 = \(total)")
    
    print()
}

testBuildCalculatorFunctions()


/********* Array Fun *********/
func addMultiple(values : [Int]) -> Int {
    var total = 0
    for x in values {
        total += x
    }
    return total
}

func multiplyMultiple(values : [Int]) -> Int {
    var total = 1
    for x in values {
        total *= x
    }
    return total
}

func count(values : [Int]) -> Int {
    return values.count
}

func avg(values : [Int]) -> Int {
    var total = 0
    for x in values {
        total += x
    }
    return total / values.count
}

func genericArrayFunction(values : [Int], op:([Int]) -> Int) -> Int {
    return op(values)
}

func testArrayFunFunctions() {
    //Testing Array Functions
    print("Testing the array functions:")
    let array = [1,2,3,4,5,6,7,8,9,10]
    print("\t Array = \(array)")
    var total = addMultiple(array)
    print("\t - Sum of an array: 1...10 = \(total)")
    
    total = multiplyMultiple(array)
    print("\t - Product of an array: 1...10 = \(total)")
    
    total = count(array)
    print("\t - Count of an array: 1...10 = \(total)")
    
    total = avg(array)
    print("\t - Average of an array: : 1...10 = \(total)")
    
    print()
    
    //Testing Generic Function
    print("Testing genericArrayFunFunctions:")
    total = genericArrayFunction(array, op: addMultiple)
    print("\t - Sum of an array: 1...10 = \(total)")
    
    total = genericArrayFunction(array, op: multiplyMultiple)
    print("\t - Product of an array: 1...10 = \(total)")
    
    total = genericArrayFunction(array, op: count)
    print("\t - Count of an array: 1...10 = \(total)")
    
    total = genericArrayFunction(array, op: avg)
    print("\t - Average of an array: : 1...10 = \(total)")
    
    print()
}

testArrayFunFunctions()


/********* Points *********/
typealias PointTuple = (x : Int, y : Int)

func addPointsTuple(a : PointTuple, b : PointTuple) -> PointTuple {
    let total = (a.x + b.x, a.y + b.y)
    return total
}

func subtractPointsTuple(a : PointTuple, b : PointTuple) -> PointTuple {
    let total = (a.x - b.x, a.y - b.y)
    return total
}

func addPointsDict(a : [String: Int], b : [String: Int]) -> [String: Int] {
    var totalX = 0
    var totalY = 0
    
    if((a["x"] != nil) && (b["x"] != nil)){
        totalX = a["x"]! + b["x"]!
    } else if (a["x"] != nil) {
        totalX = a["x"]!
    } else if (b["x"] != nil) {
       totalX = b["x"]!
    }
    
    if((a["y"] != nil) && (b["y"] != nil)){
        totalY = a["y"]! + b["y"]!
    } else if (a["y"] != nil) {
        totalY = a["y"]!
    } else if (b["y"] != nil) {
        totalY = b["y"]!
    }
    
    let total = ["x" : totalX,
                 "y" : totalY]
    return total
}

func subtractPointsDict(a : [String: Int], b : [String: Int]) -> [String: Int] {
    var totalX = 0
    var totalY = 0
    
    if((a["x"] != nil) && (b["x"] != nil)){
        totalX = a["x"]! - b["x"]!
    } else if (a["x"] != nil) {
        totalX = a["x"]!
    } else if (b["x"] != nil) {
        totalX = 0 - b["x"]!
    }
    
    if((a["y"] != nil) && (b["y"] != nil)){
        totalY = a["y"]! - b["y"]!
    } else if (a["y"] != nil) {
        totalY = a["y"]!
    } else if (b["y"] != nil) {
        totalY = 0 - b["y"]!
    }
    
    let total = ["x" : totalX,
                 "y" : totalY]
    return total
}

func dictToString(dict : [String: Int]) -> String {
    return "[\(dict["x"]!), \(dict["y"]!)]"
}


func testPointFunctions() {
    /* Tuples */
    print("Testing Tuple Point Functions:")
    let pointA = (1,2)
    let pointB = (3,4)
    
    var pointTotal = addPointsTuple(pointA, b : pointB)
    print("\t - Addition: \(pointA) + \(pointB) = \(pointTotal)")
    
    pointTotal = subtractPointsTuple(pointA, b: pointB)
    print("\t - Subtraction: \(pointA) - \(pointB) = \(pointTotal)")
    
    print()
    
    /* Dictionaries */
    print("Testing Dictionary Point Functions:")
    let pointDictionaryA = ["x" : 1, "y" : 2]
    let stringA = dictToString(pointDictionaryA)
    let pointDictionaryB = ["x" : 3, "y" : 4]
    let stringB = dictToString(pointDictionaryB)

    var dictonaryTotal = addPointsDict(pointDictionaryA, b: pointDictionaryB)
    print("\t - Addition: \(stringA) + \(stringB) = \(dictToString(dictonaryTotal))")
    
    dictonaryTotal = subtractPointsDict(pointDictionaryA, b: pointDictionaryB)
    print("\t - Subtraction: \(stringA) - \(stringB) = \(dictToString(dictonaryTotal))")
    
    print()
    
    //Dictionary Edge Cases
    print("Testing Dictionary Edge Cases:")
    let a = ["x" : 1]
    dictonaryTotal = addPointsDict(a, b: pointDictionaryB)
    print("\t - Addition: \(a) + \(stringB) = \(dictToString(dictonaryTotal))")
    dictonaryTotal = subtractPointsDict(a, b: pointDictionaryB)
    print("\t - Addition: \(a) - \(stringB) = \(dictToString(dictonaryTotal))")
    
    let b = ["y" : 2]
    dictonaryTotal = addPointsDict(b, b: pointDictionaryB)
    print("\t - Addition: \(b) + \(stringB) = \(dictToString(dictonaryTotal))")
    dictonaryTotal = subtractPointsDict(a, b: pointDictionaryB)
    print("\t - Addition: \(b) - \(stringB) = \(dictToString(dictonaryTotal))")
}

testPointFunctions()




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
    
    print("\n")
    
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
    
    print("\n")
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

func avg(values : [Int]) -> Double {
    var total = 0
    for x in values {
        total += x
    }
    return (Double) (total / values.count)
}

func genericArrayFunction() {
    //QUESTION: NOT SURE WHAT THEY WANT HERE
    print("Testing the array functions:")
    let array = [1,2,3,4,5,6,7,8,9,10]
    print("\t Array = \(array)")
    var total = addMultiple(array)
    print("\t - Sum of an array: 1...10 = \(total)")
    
    total = multiplyMultiple(array)
    print("\t - Product of an array: 1...10 = \(total)")
    
    total = count(array)
    print("\t - Count of an array: 1...10 = \(total)")
    
    let doubleTotal = avg(array)
    print("\t - Average of an array: : 1...10 = \(doubleTotal)")
}

genericArrayFunction()


/********* Points *********/

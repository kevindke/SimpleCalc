//
//  main.swift
//  SimpleCalc
//
//  Created by Kevin Ke on 4/4/16.
//  Copyright © 2016 Kevin Ke. All rights reserved.
//

import Foundation

// First number/set of numbers to calculate
print("Enter a number:")
var firstNum = readLine(stripNewline: true)!
var myArray : [String] = firstNum.componentsSeparatedByString(" ")

// Asks for the type of operation to complete
print("Enter an operation: (add, sub, mul, div, mod, count, avg, fact)")
let operation = readLine(stripNewline: true)!
var total = 0

// Depending on the different operation the user chooses, the number is calculated differently
if operation == "count" {   // counts the amount of numbers
    print(myArray.count)
} else if operation == "avg" { // averages the numbers
    for index in 0 ..< myArray.count {
        let num = Int.init(myArray[index])!
        total = total + num
    }
    print(total / myArray.count)
} else if operation == "fact" { // calculates a factorial for the given number
    var convertFirstNum = Int.init(firstNum)!
    var factorialIndex = convertFirstNum
    total = factorialIndex * (factorialIndex - 1)
    factorialIndex = factorialIndex - 2
    while factorialIndex > 0 {
        total = total * factorialIndex
        factorialIndex = factorialIndex - 1
    }
    print(total)
    
} else { // if the operation needs a second number
    var convertFirstNum = Int.init(firstNum)!
    print("Enter a number:")
    let secondNum = readLine(stripNewline: true)!
    var convertSecondNum = Int.init(secondNum)!
    if operation == "add" { // adds the two numbers together
        total = convertFirstNum + convertSecondNum
        print(total)
    } else if operation == "sub" { // subtracts the two numbers
        total = convertFirstNum - convertSecondNum
        print(total)
    } else if operation == "mul" { // multiplies the two numbers
        total = convertFirstNum * convertSecondNum
        print(total)
    } else if operation == "div" { // divides the two numbers
        total = convertFirstNum / convertSecondNum
        print(total)
    } else if operation == "mod" { // mods the two numbers
        total = convertFirstNum % convertSecondNum
        print(total)
    }
}


//
//  main.swift
//  simple-calc
//
//  Created by iGuest on 10/4/16.
//  Copyright © 2016 henryylzhang. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns: \n")
var response = readLine(strippingNewline: true)!
if response.contains("fact") {
    let container: [String] = response.characters.split{$0 == " "}.map(String.init)
} else if response.contains("avg") {
    
} else if response.contains("count") {
    
} else {
//let num1 = UInt.init(response)!
//response = readLine(strippingNewline: true)!
//if response == "+" {
//    let ans = num1 + UInt.init(readLine(strippingNewline: true)!)!
//    print("Result: \(ans)")
//} else if response == "-" {
//    let ans = num1 - UInt.init(readLine(strippingNewline: true)!)!
//    print("Result: \(ans)")
//} else if response == "*" {
//    let ans = num1 * UInt.init(readLine(strippingNewline: true)!)!
//    print("Result: \(ans)")
//} else if response == "/" {
//    let ans = num1 * UInt.init(readLine(strippingNewline: true)!)!
//    print("Result: \(ans)")
//} else if response == "%" {
//    let ans = num1 % UInt.init(readLine(strippingNewline: true)!)!
//    print("Result: \(ans)")
//}
}

//func factorial(number: Int) -> Int {
//    if number <= 1 {
//        return 1;
//    } else {
//        return Int(number * factorial(number - 1))
//    }
//}

//
//  main.swift
//  simple-calc
//
//  Created by iGuest on 10/4/16.
//  Copyright © 2016 henryylzhang. All rights reserved.
//

import Foundation

func factorial(number: Int) -> Int {
    if number <= 1 {
        return 1;
    } else {
        return number * factorial(number: (number - 1))
    }
}

func avg(set: [Int]) -> Int {
    var sum = 0;
    for number in set {
        sum += number;
    }
    return sum / (set.count)
}

//class calc {
//    func main(arg) {
        print("Enter an expression separated by returns: \n")
        var response = readLine(strippingNewline: true)!
        if response.contains("fact") {
            let set: [String] = response.characters.split{$0 == " "}.map(String.init)
            let result = factorial(number: Int(set[0])!)
            print(result)
        } else if response.contains("avg") {
            let stringSet: [String] = response.characters.split{$0 == " "}.map(String.init)
            var set = [Int]()
            for element in stringSet {
//                if let convertedElement = Int(element) {
//                   set.append(convertedElement)
//                }
                let result = Int(element)
                if Int(element) != nil {
                    set.append(result!)
                }
            }
            print(avg(set: set))
        } else if response.contains("count") {
            let set: [String] = response.characters.split{$0 == " "}.map(String.init)
            let count = set.count - 1
            print("Result: " + String(count))
        } else {
            let num1 = UInt.init(response)!
            response = readLine(strippingNewline: true)!
            if response == "+" {
                let ans = num1 + UInt.init(readLine(strippingNewline: true)!)!
                print("Result: \(ans)")
            } else if response == "-" {
                let ans = num1 - UInt.init(readLine(strippingNewline: true)!)!
                print("Result: \(ans)")
            } else if response == "*" {
                let ans = num1 * UInt.init(readLine(strippingNewline: true)!)!
                print("Result: \(ans)")
            } else if response == "/" {
                let ans = num1 / UInt.init(readLine(strippingNewline: true)!)!
                print("Result: \(ans)")
            } else if response == "%" {
                let ans = num1 % UInt.init(readLine(strippingNewline: true)!)!
                print("Result: \(ans)")
            } 
        }
//    }
//}

//
//  main.swift
//  simple-calc
//
//  Created by iGuest on 10/4/16.
//  Copyright © 2016 henryylzhang. All rights reserved.
//

import Foundation

class calc {
    func run() {
        print("Enter an expression separated by returns: \n")
        var response = readLine(strippingNewline: true)!
        if response.contains("fact") {
            let set: [String] = response.characters.split{$0 == " "}.map(String.init)
            factorial(set[0]: Int)
        } else if response.contains("avg") {
            let stringSet: [String] = response.characters.split{$0 == " "}.map(String.init)
            var set = [Int]()
            for element in set {
                if Int(element) != nil {
                   set.append(Int(element))
                }
            }
            print(avg(set: [Int]))
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
    }

    func factorial(number: Int) -> Int {
        if number <= 1 {
            return 1;
        } else {
            return number * factorial((number: Int - 1))
        }
    }

    func avg(set: [Int]) -> Int {
        var sum = 0;
        for number in set {
            sum += number;
        }
        return sum / (set.count - 1)
    }
}

calc.run()

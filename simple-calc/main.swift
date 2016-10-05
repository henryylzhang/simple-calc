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
let num1 = UInt.init(response)!
response = readLine(strippingNewline: true)!
var operate = ""
switch operate {
    case "+":
        operate = "+"
    case "-":
        operate = "-"
    case "*":
        operate = "*"
    case "/":
        operate = "/"
    case "%":
        operate = "%"
    default:
        print ("Please enter a valid operator")
}

//if response = readLine()

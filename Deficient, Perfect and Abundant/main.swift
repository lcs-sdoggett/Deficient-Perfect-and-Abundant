//
//  main.swift
//  Deficient, Perfect and Abundant
//
//  Created by Doggett, Scott on 2020-03-09.
//  Copyright © 2020 Doggett, Scott. All rights reserved.
//

import Foundation

var properDivisors: [Int] = []
let inputGiven: Int
var integer = 0
var sumOfProperDivisors = 0
var value = 0


// Loop over until a valid input
while true {
    
    // Ask for input
    print("What integer would you like to examine?")
    guard let input = readLine() else {
        
        // If nothing is given, return to begining of loop
        continue
    }
    
    // Attempt to make input into an integer
    guard let inputAsInt = Int(input) else {
        
        // Let user know of their mistake
        print("Make sure you're input is an integer.")
        // Could not make input into an integer, so return to top and ask again
        continue
        
    }
    
    // Check that integer is in desired range
    guard inputAsInt > 0, inputAsInt <= 32500 else {
        
        // Let user know of their mistake
        print("Make sure your integer is more then 0 and less then 32,500.")
        
        // Integer not in desired range, return to top and ask again
        continue
        
    }
    
    integer = inputAsInt
    
    break
    
}

if integer == 1 {
    print("1 is a deficient number")
} else {
    
    for divisor in 1...integer-1 {
        
        let remainder = integer % divisor
        
        if remainder == 0 {
            properDivisors.append(divisor)
        }
    }
    
    for value in properDivisors {
        
        sumOfProperDivisors += value
    }
    
    if sumOfProperDivisors < integer {
        print("\(integer) is a deficient number")
    } else if sumOfProperDivisors == integer {
        print("\(integer) is a perfect number")
    } else if sumOfProperDivisors > integer {
        print("\(integer) is a abundant number")
    }
}

//
//  TempConverter.swift
//  TempConverter
//
//  Created by Matthew Nielsen on 1/27/15.
//  Copyright (c) 2015 Matthew Nielsen. All rights reserved.
//

import Foundation

class TempConverter {
    
    class func convert(temp: Int, unit: String = "F") -> Int {
        if tempBelowAbsoluteZero(temp, unit: unit) {
            // NSException(name: "SomeName", reason: "SomeReason", userInfo: nil).raise()
            return -1000
        }
        
        if unit == "F" {
            return 5 * (temp - 32) / 9
        } else {
            return (9 * temp) / 5 + 32
        }
    }
    
    class func multiConvert(temps: [Int], unit: String = "F") -> [Int] {
        var convertedTemps: [Int]
        convertedTemps = [Int]()
        
        for temp in temps {
            convertedTemps.append(self.convert(temp, unit: unit))
        }
        
        return convertedTemps
    }
    
    class func tempBelowAbsoluteZero(temp: Int, unit: String) -> Bool {
        return (temp < -454 && unit == "F") || (temp < -270 && unit == "C")
    }
    
}

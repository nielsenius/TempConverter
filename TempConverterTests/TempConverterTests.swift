//
//  TempConverterTests.swift
//  TempConverterTests
//
//  Created by Matthew Nielsen on 1/27/15.
//  Copyright (c) 2015 Matthew Nielsen. All rights reserved.
//

import Quick
import Nimble
import TempConverter

class TempConverterSpec: QuickSpec {
    override func spec() {
        
        describe("temperature converter") {
            
            describe("absolute zero function") {
                
                it("knows if a temp is below abs zero") {
                    expect(TempConverter.tempBelowAbsoluteZero(-454, unit: "F")).to(beFalse())
                    expect(TempConverter.tempBelowAbsoluteZero(-455, unit: "F")).to(beTrue())
                    expect(TempConverter.tempBelowAbsoluteZero(-270, unit: "C")).notTo(beTrue())
                    expect(TempConverter.tempBelowAbsoluteZero(-271, unit: "C")).to(beTrue())
                }
                
            }
            
            describe("convert function") {
                
                it("converts F to C") {
                    expect(TempConverter.convert(-500)).to(equal(-1000)) // below absolute zero
                    expect(TempConverter.convert(14)).to(equal(-10))
                    expect(TempConverter.convert(32)).to(equal(0))
                    expect(TempConverter.convert(50)).to(equal(10))
                    expect(TempConverter.convert(212)).to(equal(100))
                }
                
                it("converts C to F") {
                    expect(TempConverter.convert(-280, unit: "C")).to(equal(-1000)) // below absolute zero
                    expect(TempConverter.convert(-10, unit: "C")).to(equal(14))
                    expect(TempConverter.convert(0, unit: "C")).to(equal(32))
                    expect(TempConverter.convert(10, unit: "C")).to(equal(50))
                    expect(TempConverter.convert(100, unit: "C")).to(equal(212))
                }
                
            }
            
            describe("multiConvert function") {
                
                it("converts multiple temps") {
                    var fTemps = [14, 32, 50, 212]
                    var cTemps = [-10, 0, 10, 100]
                    
                    expect(TempConverter.multiConvert(fTemps)).to(equal(cTemps))
                    expect(TempConverter.multiConvert(cTemps, unit: "C")).to(equal(fTemps))
                    expect(TempConverter.multiConvert(fTemps)).notTo(equal(fTemps))
                }
                
            }
            
        }
        
    }
}

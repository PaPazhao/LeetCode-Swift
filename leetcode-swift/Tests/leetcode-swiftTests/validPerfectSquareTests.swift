//
//  validPerfectSquareTests.swift
//  
//
//  Created by lizhao on 2022/10/11.
//

import XCTest
import leetcode_swift
final class validPerfectSquareTests: XCTestCase {

 
    func testExample() throws {
        XCTAssertEqual(isPerfectSquare(1), true)
        XCTAssertEqual(isPerfectSquare(2), false)
        XCTAssertEqual(isPerfectSquare(3), false)
        XCTAssertEqual(isPerfectSquare(4), true)
        XCTAssertEqual(isPerfectSquare(5), false)
        XCTAssertEqual(isPerfectSquare(6), false)
        XCTAssertEqual(isPerfectSquare(7), false)
        XCTAssertEqual(isPerfectSquare(8), false)
        XCTAssertEqual(isPerfectSquare(9), true)
        
        
    }
 

}

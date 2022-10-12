//
//  binarySearchTests.swift
//  
//
//  Created by lizhao on 2022/10/12.
//

import XCTest
import leetcode_swift
final class binarySearchTests: XCTestCase {
 
    func testExample() throws {
        XCTAssertEqual(search([-1,0,3,5,9,12], 9), 4)
        XCTAssertEqual(search([-1,0,3,5,9,12], 2), -1)
    }
 

}

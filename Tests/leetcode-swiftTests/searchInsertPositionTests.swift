//
//  searchInsertPositionTests.swift
//  
//
//  Created by lizhao on 2022/10/12.
//

import XCTest
import leetcode_swift

final class searchInsertPositionTests: XCTestCase {
 
    func testExample() throws {
        
        XCTAssertEqual(searchInsert([1, 3, 5, 6], 5), 2)
        XCTAssertEqual(searchInsert([1, 3, 5, 6], 2), 1)
        XCTAssertEqual(searchInsert([1, 3, 5, 6], 7), 4)
    }
 

}

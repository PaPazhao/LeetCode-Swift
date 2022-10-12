//
//  peakIndexInMountainArrayTests.swift
//  
//
//  Created by lizhao on 2022/10/12.
//

import XCTest
import leetcode_swift
final class peakIndexInMountainArrayTests: XCTestCase {

    func testExample() throws {
        XCTAssertEqual(peakIndexInMountainArray([0,1,0]), 1)
        XCTAssertEqual(peakIndexInMountainArray([0,2,1,0]), 1)
        XCTAssertEqual(peakIndexInMountainArray([0,10,5,2]), 1)
    }
}

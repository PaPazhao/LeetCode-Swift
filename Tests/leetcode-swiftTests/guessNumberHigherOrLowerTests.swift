//
//  guessNumberHigherOrLowerTests.swift
//  
//
//  Created by lizhao on 2022/10/12.
//

import XCTest
import leetcode_swift
final class guessNumberHigherOrLowerTests: XCTestCase {
 
    func testExample() throws {
        let game = Solution(targetNumber: 6)
        XCTAssertEqual(game.guessNumber(10), 6)
        XCTAssertEqual(game.guessNumber(4), -1)
    }
 

}

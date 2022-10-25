//
//  File.swift
//  
//
//  Created by lizhao on 2022/10/11.
//

import Foundation

public func isPerfectSquare(_ num: Int) -> Bool {
    var left = 1, right = num
    while left <= right {
        let mid = left + (right - left) / 2
        if mid * mid == num {
            return true
        } else if mid * mid > num {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    return false
}

/*:
 367. 有效的完全平方数
 给定一个 正整数 num ，编写一个函数，如果 num 是一个完全平方数，则返回 true ，否则返回 false 。

 进阶：不要 使用任何内置的库函数，如  sqrt 。

 示例 1：

 输入：num = 16
 输出：true
 示例 2：

 输入：num = 14
 输出：false
  

 提示：

 1 <= num <= 2^31 - 1
*/



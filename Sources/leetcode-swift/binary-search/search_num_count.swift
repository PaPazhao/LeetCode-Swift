//
//  File.swift
//  
//
//  Created by zhaoli on 2022/11/2.
//

import Foundation

class CountSolution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        let left = leftBound(nums, target)
        if left == -1 {
            return 0
        }
        let right = rightBound(nums, target)
        return right - left + 1
    }

    func rightBound(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count
        while left < right {
            let mid = left + (right - left) >> 2
            if target > nums[mid] {
                left = mid + 1
            } else if target < nums[mid] {
                right = mid
            } else if target == nums[mid] {
                left = mid + 1
            }
        }
        if left - 1 < 0 { return -1 }
        return nums[left - 1] == target ? left - 1 : -1
    }
    func leftBound(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count
        while left < right {
            let mid = left + (right - left) >> 2
            if target > nums[mid] {
                left = mid + 1
            } else if target < nums[mid] {
                right = mid
            } else if target == nums[mid] {
                right = mid
            }
        }
        if left == nums.count { return -1 }
        return target == nums[left] ? left : -1
    }
}

/*:
 https://leetcode.cn/problems/zai-pai-xu-shu-zu-zhong-cha-zhao-shu-zi-lcof/description/
 剑指 Offer 53 - I. 在排序数组中查找数字 I
 简单
 368
 相关企业
 统计一个数字在排序数组中出现的次数。

  

 示例 1:

 输入: nums = [5,7,7,8,8,10], target = 8
 输出: 2
 示例 2:

 输入: nums = [5,7,7,8,8,10], target = 6
 输出: 0
  

 提示：

 0 <= nums.length <= 105
 -109 <= nums[i] <= 109
 nums 是一个非递减数组
 -109 <= target <= 109
  

 注意：本题与主站 34 题相同（仅返回值不同）：https://leetcode-cn.com/problems/find-first-and-last-position-of-element-in-sorted-array/
 */

//
//  File.swift
//  
//
//  Created by zhaoli on 2022/11/2.
//

import Foundation

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    let left = leftBounds(nums, target)
    let right = rightBounds(nums, target)
    print(left, right)
    return [left, right]
}

func leftBounds(_ nums: [Int], _ target: Int) -> Int {
    var left = 0, right = nums.count
    while left < right {
        let mid = left + (right - left) >> 1
        if target > nums[mid] {
            left = mid + 1
        } else if target < nums[mid] {
            right = mid
        } else if target == nums[mid] {
            right = mid
        }
    }

    if right == nums.count { return -1 }
    return nums[right] == target ? right : -1
}

func rightBounds(_ nums: [Int], _ target: Int) -> Int {
    var left = 0, right = nums.count

    while left < right {
        let mid = left + (right - left) >> 1
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


/*:
 https://leetcode.cn/problems/find-first-and-last-position-of-element-in-sorted-array/
 34. 在排序数组中查找元素的第一个和最后一个位置
 中等
 2K
 相关企业
 给你一个按照非递减顺序排列的整数数组 nums，和一个目标值 target。请你找出给定目标值在数组中的开始位置和结束位置。

 如果数组中不存在目标值 target，返回 [-1, -1]。

 你必须设计并实现时间复杂度为 O(log n) 的算法解决此问题。

  

 示例 1：

 输入：nums = [5,7,7,8,8,10], target = 8
 输出：[3,4]
 示例 2：

 输入：nums = [5,7,7,8,8,10], target = 6
 输出：[-1,-1]
 示例 3：

 输入：nums = [], target = 0
 输出：[-1,-1]
  

 提示：

 0 <= nums.length <= 105
 -109 <= nums[i] <= 109
 nums 是一个非递减数组
 -109 <= target <= 109
 */

//
//  search-insert-position.swift
//  
//
//  Created by lizhao on 2022/10/12.
//

import Foundation

public func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var left = 0, right = nums.count - 1
    
    while left <= right {
        let mid = left + (right - left) / 2
        let midValue = nums[mid]
        
        if midValue == target {
            return mid
        } else if target > midValue {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    
    return left
}

/*:
 35. 搜索插入位置
 简单
 给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。

 请必须使用时间复杂度为 O(log n) 的算法。

  

 示例 1:

 输入: nums = [1,3,5,6], target = 5
 输出: 2
 示例 2:

 输入: nums = [1,3,5,6], target = 2
 输出: 1
 示例 3:

 输入: nums = [1,3,5,6], target = 7
 输出: 4
  

 提示:

 1 <= nums.length <= 104
 -104 <= nums[i] <= 104
 nums 为 无重复元素 的 升序 排列数组
 -104 <= target <= 104
 
 [LeetCode](https://leetcode.cn/problems/search-insert-position/?envType=study-plan&id=binary-search-beginner&plan=binary-search&plan_progress=45veja7)
 */




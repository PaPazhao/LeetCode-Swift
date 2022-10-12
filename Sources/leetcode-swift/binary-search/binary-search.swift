//
//  File.swift
//  
//
//  Created by lizhao on 2022/10/12.
//

import Foundation

/*:
 704. 二分查找
 简单
 1K
 相关企业
 给定一个 n 个元素有序的（升序）整型数组 nums 和一个目标值 target  ，写一个函数搜索 nums 中的 target，如果目标值存在返回下标，否则返回 -1。


 示例 1:

 输入: nums = [-1,0,3,5,9,12], target = 9
 输出: 4
 解释: 9 出现在 nums 中并且下标为 4
 示例 2:

 输入: nums = [-1,0,3,5,9,12], target = 2
 输出: -1
 解释: 2 不存在 nums 中因此返回 -1
  

 提示：

 你可以假设 nums 中的所有元素是不重复的。
 n 将在 [1, 10000] 之间。
 nums 的每个元素都将在 [-9999, 9999] 之间。
 
 https://leetcode.cn/problems/binary-search/?envType=study-plan&id=binary-search-beginner&plan=binary-search&plan_progress=45veja7
 */

public func search(_ nums: [Int], _ target: Int) -> Int {
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
    
    return -1
}

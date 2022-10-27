//
//  File.swift
//  
//
//  Created by zhaoli on 2022/10/27.
//

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 1 { return 1 }
    var slow = 0, fast = 1

    while fast < nums.count {
        if nums[slow] != nums[fast] {
            slow += 1
            nums[slow] = nums[fast]
        }
     
        fast += 1
    }

    return slow + 1
}


/*:
 https://leetcode.cn/problems/remove-duplicates-from-sorted-array/
 26. 删除有序数组中的重复项
 简单
 2.9K
 相关企业
 给你一个 升序排列 的数组 nums ，请你 原地 删除重复出现的元素，使每个元素 只出现一次 ，返回删除后数组的新长度。元素的 相对顺序 应该保持 一致 。

 由于在某些语言中不能改变数组的长度，所以必须将结果放在数组 nums 的第一部分。更规范地说，如果在删除重复项之后有 k 个元素，那么 nums 的前 k 个元素应该保存最终结果。

 将最终结果插入 nums 的前 k 个位置后返回 k 。

 不要使用额外的空间，你必须在 原地 修改输入数组 并在使用 O (1) 额外空间的条件下完成。

 判题标准:

 系统会用下面的代码来测试你的题解:

 int[] nums = [...]; // 输入数组
 int[] expectedNums = [...]; // 长度正确的期望答案

 int k = removeDuplicates(nums); // 调用

 assert k == expectedNums.length;
 for (int i = 0; i < k; i++) {
     assert nums[i] == expectedNums[i];
 }
 如果所有断言都通过，那么您的题解将被 通过。

  

 示例 1：

 输入：nums = [1,1,2]
 输出：2, nums = [1,2,_]
 解释：函数应该返回新的长度 2 ，并且原数组 nums 的前两个元素被修改为 1, 2 。不需要考虑数组中超出新长度后面的元素。
 示例 2：

 输入：nums = [0,0,1,1,1,2,2,3,3,4]
 输出：5, nums = [0,1,2,3,4]
 解释：函数应该返回新的长度 5 ， 并且原数组 nums 的前五个元素被修改为 0, 1, 2, 3, 4 。不需要考虑数组中超出新长度后面的元素。
  

 提示：

 1 <= nums.length <= 3 * 104
 -104 <= nums[i] <= 104
 nums 已按 升序 排列
 */
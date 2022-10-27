//
//  File.swift
//  
//
//  Created by zhaoli on 2022/10/27.
//

import Foundation

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    let dummp = ListNode(-1, head)
    var slow = dummp.next, fast = dummp.next

    while fast != nil {
        if slow!.val != fast!.val {
            slow = slow?.next
            slow!.val = fast!.val
        }
        fast = fast?.next
    }
    slow?.next = nil
    return dummp.next
}

/*:
 https://leetcode.cn/problems/remove-duplicates-from-sorted-list/description/
 83. 删除排序链表中的重复元素
 简单
 877
 相关企业
 给定一个已排序的链表的头 head ， 删除所有重复的元素，使每个元素只出现一次 。返回 已排序的链表 。

  

 示例 1：


 输入：head = [1,1,2]
 输出：[1,2]
 示例 2：


 输入：head = [1,1,2,3,3]
 输出：[1,2,3]
  

 提示：

 链表中节点数目在范围 [0, 300] 内
 -100 <= Node.val <= 100
 题目数据保证链表已经按升序 排列
 */

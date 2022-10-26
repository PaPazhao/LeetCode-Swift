//
//  merge-two-sorted-lists.swift
//  leetcode-swift
//
//  Created by zhaoli on 2022/10/26.
//

import Foundation
 
 


func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    var left = list1
    var right = list2

    let dump: ListNode? = ListNode(-1)
    var head = dump
    while let l = left, let r = right {
        if l.val > r.val {
            head?.next = r
            right = r.next
        } else {
            head?.next = l
            left = l.next
        }
        head = head?.next
    }
    if left != nil {
        head?.next = left
    }
    if right != nil {
        head?.next = right
    }
    return dump?.next
}


/*:https://leetcode.cn/problems/merge-two-sorted-lists/description/
 21. 合并两个有序链表
 简单
 2.8K
 相关企业
 将两个升序链表合并为一个新的 升序 链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。

  

 示例 1：


 输入：l1 = [1,2,4], l2 = [1,3,4]
 输出：[1,1,2,3,4,4]
 示例 2：

 输入：l1 = [], l2 = []
 输出：[]
 示例 3：

 输入：l1 = [], l2 = [0]
 输出：[0]
  

 提示：

 两个链表的节点数目范围是 [0, 50]
 -100 <= Node.val <= 100
 l1 和 l2 均按 非递减顺序 排列*/

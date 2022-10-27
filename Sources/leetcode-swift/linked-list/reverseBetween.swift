//
//  File.swift
//  
//
//  Created by zhaoli on 2022/10/27.
//

import Foundation

func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
    if left == 1 {
        return reverseN(head, right)
    }

    head?.next = reverseBetween(head?.next, left - 1, right - 1)
    return head
}
var other: ListNode? = nil
func reverseN(_ head: ListNode?, _ n: Int) -> ListNode? {
    if n == 1 {
        other = head?.next
        return head
    }
    let last  = reverseN(head?.next, n - 1)
    head?.next?.next = head
    head?.next = other
    return last
}

/*:
 https://leetcode.cn/problems/reverse-linked-list-ii/
 92. 反转链表 II
 中等
 1.4K
 相关企业
 给你单链表的头指针 head 和两个整数 left 和 right ，其中 left <= right 。请你反转从位置 left 到位置 right 的链表节点，返回 反转后的链表 。
  

 示例 1：


 输入：head = [1,2,3,4,5], left = 2, right = 4
 输出：[1,4,3,2,5]
 示例 2：

 输入：head = [5], left = 1, right = 1
 输出：[5]
  

 提示：

 链表中节点数目为 n
 1 <= n <= 500
 -500 <= Node.val <= 500
 1 <= left <= right <= n
  

 进阶： 你可以使用一趟扫描完成反转吗？*/

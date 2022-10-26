//
//  File.swift
//  
//
//  Created by zhaoli on 2022/10/26.
//

import Foundation

func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
    var fast = head, slow = head
    
    for i in 0..<k {
        fast = fast?.next
    }

    while fast != nil {
        fast = fast?.next
        slow = slow?.next
    }
    return slow
}


/*:
 https://leetcode.cn/problems/lian-biao-zhong-dao-shu-di-kge-jie-dian-lcof/description/
 剑指 Offer 22. 链表中倒数第 k 个节点
 简单
 402
 相关企业
 输入一个链表，输出该链表中倒数第 k 个节点。为了符合大多数人的习惯，本题从 1 开始计数，即链表的尾节点是倒数第 1 个节点。

 例如，一个链表有 6 个节点，从头节点开始，它们的值依次是 1、2、3、4、5、6。这个链表的倒数第 3 个节点是值为 4 的节点。

  

 示例：

 给定一个链表: 1->2->3->4->5, 和 k = 2.

 返回链表 4->5.
 */
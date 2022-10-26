//
//  File.swift
//  
//
//  Created by zhaoli on 2022/10/26.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?

    public init(_ val: Int = 0, _ next: ListNode? = nil) {
        self.val = val;
        self.next = next;
    }
}

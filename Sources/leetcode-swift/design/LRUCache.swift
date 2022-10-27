//
//  LRUCache.swift
//  leetcode-swift
//
//  Created by zhaoli on 2022/10/26.
//

import Foundation


class LRUCache {
    private let cache: DoubleList
    private let capacity: Int
    private var nodeMap: [Int: CacheNode]

    init(_ capacity: Int) {
        self.capacity = capacity
        self.cache = DoubleList()
        self.nodeMap = [:]
    }
    
    func get(_ key: Int) -> Int {
        guard let node = nodeMap[key] else {
            return -1
        }
        makeNodeRecently(node)
        return node.value
    }
    
    func put(_ key: Int, _ value: Int) {
        if let node = nodeMap[key] {
            delete(node: node)
        }
        addRecently(key: key, value: value)
    }

    /// 缓存是不是填满了
    private var isCacheFull: Bool {
        return cache.size == capacity
    }

    // 这个节点存在，把这个节点设置最新
    private func makeNodeRecently(_ node: CacheNode) {
        cache.remove(node: node)
        cache.add(node: node)
    }

    private func addRecently(key: Int, value: Int) {
        releaseCacheIfneed()
        let node = CacheNode(key: key, value: value)
        cache.add(node: node)
        nodeMap[key] = node
    }

    // 如果有必要的话就释放缓存空间（缓存达到容量释放最后的一个节点)
    private func releaseCacheIfneed() {
        if !isCacheFull {
            return
        }

        // 缓存满了,删除
        guard let node = cache.removeLast() else {
            return
        }
        nodeMap.removeValue(forKey: node.key)
    }

    private func delete(node: CacheNode) {
        cache.remove(node: node)
        nodeMap.removeValue(forKey: node.key)
    }
}
 
public class CacheNode {
    var key: Int
    var value: Int
    var next: CacheNode?
    var prev: CacheNode?

    public init(
        key: Int,
        value: Int,
        next: CacheNode? = nil,
        prev: CacheNode? = nil
    ) {
        self.key = key
        self.value = value
        self.next = next
        self.prev = prev
    }
}

public class DoubleList {
    private let head: CacheNode  /// 最新的添加到这里
    private let tail: CacheNode  /// 最久不用要删除的添加到这里
    private(set) var size: Int

    public init() {
        self.head = CacheNode(key: 0, value: 0)
        self.tail = CacheNode(key: 0, value: 0)
        self.size = 0
        self.head.next = self.tail
        self.tail.prev = self.head
    }

    /// 删除一个节点，这个节点肯定存在
    public func remove(node: CacheNode) {
        node.prev?.next = node.next
        node.next?.prev = node.prev
        node.prev = nil
        node.next = nil
        size -= 1
    }

    public func add(node: CacheNode) {
        node.next = head.next
        head.next?.prev = node
        head.next = node
        node.prev = head
        size += 1
    }
 
    public func removeLast() -> CacheNode? {
        if size == 0 {
            return nil
        }

        guard let node = tail.prev else {
            return nil
        }
        remove(node: node)
        return node
    }
}





/*:
 https://leetcode.cn/problems/lru-cache/
 146. LRU 缓存
 中等
 2.5K
 相关企业
 请你设计并实现一个满足  LRU (最近最少使用) 缓存 约束的数据结构。
 实现 LRUCache 类：
 LRUCache(int capacity) 以 正整数 作为容量 capacity 初始化 LRU 缓存
 int get(int key) 如果关键字 key 存在于缓存中，则返回关键字的值，否则返回 -1 。
 void put(int key, int value) 如果关键字 key 已经存在，则变更其数据值 value ；如果不存在，则向缓存中插入该组 key-value 。如果插入操作导致关键字数量超过 capacity ，则应该 逐出 最久未使用的关键字。
 函数 get 和 put 必须以 O(1) 的平均时间复杂度运行。

  

 示例：

 输入
 ["LRUCache", "put", "put", "get", "put", "get", "put", "get", "get", "get"]
 [[2], [1, 1], [2, 2], [1], [3, 3], [2], [4, 4], [1], [3], [4]]
 输出
 [null, null, null, 1, null, -1, null, -1, 3, 4]

 解释
 LRUCache lRUCache = new LRUCache(2);
 lRUCache.put(1, 1); // 缓存是 {1=1}
 lRUCache.put(2, 2); // 缓存是 {1=1, 2=2}
 lRUCache.get(1);    // 返回 1
 lRUCache.put(3, 3); // 该操作会使得关键字 2 作废，缓存是 {1=1, 3=3}
 lRUCache.get(2);    // 返回 -1 (未找到)
 lRUCache.put(4, 4); // 该操作会使得关键字 1 作废，缓存是 {4=4, 3=3}
 lRUCache.get(1);    // 返回 -1 (未找到)
 lRUCache.get(3);    // 返回 3
 lRUCache.get(4);    // 返回 4
  

 提示：

 1 <= capacity <= 3000
 0 <= key <= 10000
 0 <= value <= 105
 最多调用 2 * 105 次 get 和 put
 */

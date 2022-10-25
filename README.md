
LeetCode-Swift
========

### Binary Search
 
| # | Title | Solution | Difficulty |
|---| ----- | -------- | ---------- |
|35|[搜索插入位置](https://leetcode.cn/problems/search-insert-position/?envType=study-plan&id=binary-search-beginner&plan=binary-search&plan_progress=45veja7) | [Swift](./Sources/leetcode-swift/binary-search/search-insert-position.swift)| Easy|
|69|[x 的平方根](https://leetcode.cn/problems/sqrtx/) | [Swift](./Sources/leetcode-swift/binary-search/sqrtx.swift)|Easy|
|367|[有效的完全平方数](https://leetcode.cn/problems/valid-perfect-square/) | [Swift](./Sources/leetcode-swift/binary-search/valid-perfect-square.swift)|Easy|
|374|[猜数字大小](https://leetcode.cn/problems/guess-number-higher-or-lower/?envType=study-plan&id=binary-search-beginner&plan=binary-search&plan_progress=45veja7)|[Swift](./Sources/leetcode-swift/binary-search/guess-number-higher-or-lower.swift)|Easy|
|704|[二分查找](https://leetcode.cn/problems/binary-search/?envType=study-plan&id=binary-search-beginner&plan=binary-search&plan_progress=45veja7)|[Swift](./Sources/leetcode-swift/binary-search/binary-search.swift)|Easy|
|852|[山脉数组的峰顶索引](https://leetcode.cn/problems/peak-index-in-a-mountain-array/?envType=study-plan&id=binary-search-beginner&plan=binary-search&plan_progress=45veja7)|[Swift](./Sources/leetcode-swift/binary-search/peak-index-in-a-mountain-array.swift)|Medium|

## 二叉树
| # | Title | Solution | Difficulty |
|---| ----- | -------- | ---------- |
|100|[相同的树](https://leetcode.cn/problems/same-tree/description/)|[Swift](./Sources/leetcode-swift/binary-tree/same-tree.swift)|Easy|
|101|[对称二叉树](https://leetcode.cn/problems/symmetric-tree/description/)|[Swift](./Sources/leetcode-swift/binary-tree/symmetric-tree.swift)|Easy|
|104|[二叉树的最大深度](https://leetcode.cn/problems/maximum-depth-of-binary-tree/)|[Swift](./Sources/leetcode-swift/binary-tree/maximum-depth-of-binary-tree.swift)|Easy|
|114|[二叉树展开为链表](https://leetcode.cn/problems/flatten-binary-tree-to-linked-list/)|[Swift](./Sources/leetcode-swift/binary-tree/flatten-binary-tree-to-linked-list.swift)|Medium|
|116|[填充每个节点的下一个右侧节点指针](https://leetcode.cn/problems/populating-next-right-pointers-in-each-node/description/)|[Swift](./Sources/leetcode-swift/binary-tree/populating-next-right-pointers-in-each-node.swift)|Medium|
|226|[翻转二叉树](https://leetcode.cn/problems/invert-binary-tree/submissions/376325480/)|[Swift](./Sources/leetcode-swift/binary-tree/invert-binary-tree.swift)|Easy|
|654|[最大二叉树](https://leetcode.cn/problems/maximum-binary-tree/)|[Swift](./Sources/leetcode-swift/binary-tree/maximum-binary-tree.swift)|Medium|

||[]()|[Swift]()||
## 二分查找

### 二分查找具备三个条件
1. 目标函数具备单向性（递增或者递减）
2. 具备上下边界
3. 可以通过下标随机访问


### 二分查找的模板代码

```swift
var left, right = array.count
while left <= right {
    let mid = left + (right - left) / 2
    if array[mid] == target {
        // 找到了
        break 
    } else if mid > target {
        right = mid - 1
    } else {
        left = mid + 1
    }
} 

```

### LeetCode 的题目
 

https://www.beyond3d.com/content/articles/8/

 
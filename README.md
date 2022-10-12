
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



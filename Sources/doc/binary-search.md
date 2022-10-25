# 二分查找

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

 

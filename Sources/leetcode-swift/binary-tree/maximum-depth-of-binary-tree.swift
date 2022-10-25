//
//  File.swift
//  
//
//  Created by zhaoli on 2022/10/25.
//

import Foundation

#if true
private var res = 0
private var depth = 0

func maxDepth(_ root: TreeNode?) -> Int {
    traverse(root)
    return res
}

private func traverse(_ root: TreeNode?) {
    guard let r = root else {
        return
    }
    depth += 1
    if r.left == nil && r.right == nil {
        res = max(depth, res)
    }
    traverse(r.left)
    traverse(r.right)
    depth -= 1
}

#else
func maxDepth(_ root: TreeNode?) -> Int {
    guard let r = root else {
        return 0
    }
    
    let left = maxDepth(r.left)
    let right = maxDepth(r.right)
    
    return max(left, right) + 1
}
#endif
/*:
 https://leetcode.cn/problems/maximum-depth-of-binary-tree/
 104. 二叉树的最大深度

 给定一个二叉树，找出其最大深度。

 二叉树的深度为根节点到最远叶子节点的最长路径上的节点数。

 说明: 叶子节点是指没有子节点的节点。

 示例：
 给定二叉树 [3,9,20,null,null,15,7]，

     3
    / \
   9  20
     /  \
    15   7
 返回它的最大深度 3 。
 */

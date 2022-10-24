//
//  File.swift
//  
//
//  Created by zhaoli on 2022/10/24.
//

import Foundation

func isSymmetric(_ root: TreeNode?) -> Bool {
    guard let r = root, let left = r.left, let right = r.right else {
        return root == nil || (root?.left == nil && root?.right == nil)
    }

    if left.val != right.val {
        return false
    }

    return dfs(left, right)
}

private func dfs(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    guard let pp = p, let qq = q else {
        return p == nil && q == nil
    }
    if pp.val != qq.val {
        return false
    }
    return isSameTree(pp.left, qq.right) && isSameTree(pp.right, qq.left)
}

/*:
 https://leetcode.cn/problems/symmetric-tree/description/
 
 101. 对称二叉树
 简单
 2.2K
 相关企业
 给你一个二叉树的根节点 root ， 检查它是否轴对称。

  

 示例 1：


 输入：root = [1,2,2,3,4,4,3]
 输出：true
 示例 2：


 输入：root = [1,2,2,null,3,null,3]
 输出：false
  

 提示：

 树中节点数目在范围 [1, 1000] 内
 -100 <= Node.val <= 100
  

 进阶：你可以运用递归和迭代两种方法解决这个问题吗？
 */

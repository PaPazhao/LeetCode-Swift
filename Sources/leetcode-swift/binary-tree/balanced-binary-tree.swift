//
//  File.swift
//  
//
//  Created by zhaoli on 2022/10/25.
//

import Foundation


func isBalanced(_ root: TreeNode?) -> Bool {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let r = root else {
            return 0
        }
        
        let left = maxDepth(r.left)
        let right = maxDepth(r.right)
        
        return max(left, right) + 1
    }
    
    guard let r = root else {
        return true
    }
    
    if isBalanced(r.left) == false || isBalanced(r.right) == false {
        return false
    }
    
    return abs(maxDepth(r.left) - maxDepth(r.right)) < 2
    
}


/*:
 https://leetcode.cn/problems/balanced-binary-tree/?show=1
 
 110. 平衡二叉树
 简单
 1.2K
 相关企业
 给定一个二叉树，判断它是否是高度平衡的二叉树。

 本题中，一棵高度平衡二叉树定义为：

 一个二叉树每个节点 的左右两个子树的高度差的绝对值不超过 1 。

  

 示例 1：


 输入：root = [3,9,20,null,null,15,7]
 输出：true
 示例 2：


 输入：root = [1,2,2,3,3,null,null,4,4]
 输出：false
 示例 3：

 输入：root = []
 输出：true
  

 提示：

 树中的节点数在范围 [0, 5000] 内
 -104 <= Node.val <= 104
 */

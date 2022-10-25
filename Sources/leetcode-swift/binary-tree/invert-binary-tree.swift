//
//  File.swift
//  
//
//  Created by zhaoli on 2022/10/25.
//

import Foundation


#if false
// 遍历方法
func invertTree(_ root: TreeNode?) -> TreeNode? {
    var r = root
    traverse(&r)
    return r
}

private func traverse(_ root: inout TreeNode?) {
    guard let r = root else {
        return
    }
    
    (r.left, r.right) = (r.right, r.left)
    
    traverse(&r.left)
    traverse(&r.right)
}
#else
// 分解思路
func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let r = root else {
        return nil
    }
    let left = invertTree(r.left)
    let right = invertTree(r.right)
    r.left = right
    r.right = left
    return root
}
#endif


/*:
 https://leetcode.cn/problems/invert-binary-tree/submissions/376325480/
 226. 翻转二叉树
 简单
 1.4K
 相关企业
 给你一棵二叉树的根节点 root ，翻转这棵二叉树，并返回其根节点。

  

 示例 1：



 输入：root = [4,2,7,1,3,6,9]
 输出：[4,7,2,9,6,3,1]
 示例 2：



 输入：root = [2,1,3]
 输出：[2,3,1]
 示例 3：

 输入：root = []
 输出：[]
  

 提示：

 树中节点数目范围在 [0, 100] 内
 -100 <= Node.val <= 100
 */

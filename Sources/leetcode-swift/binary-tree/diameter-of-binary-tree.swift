//
//  diameter-of-binary-tree.swift
//  leetcode-swift
//
//  Created by zhaoli on 2022/10/25.
//

import Foundation


class DiameterOfBinaryTreeSolution {
    private var maxDiameter = 0
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        traverse(root)
        return maxDiameter
    }

    func traverse(_ root: TreeNode?) {
        guard let r = root else {
            return
        }
        let left = maxDepth(r.left)
        let right = maxDepth(r.right)
        let diameter = left + right
        maxDiameter = max(diameter, maxDiameter)
        traverse(r.left)
        traverse(r.right)
    }

    func maxDepth(_ root: TreeNode?) -> Int {
        guard let r = root else {
            return 0
        }
        let left = maxDepth(r.left)
        let right = maxDepth(r.right)
        return max(left, right) + 1
    }
}

/*:
 https://leetcode.cn/problems/diameter-of-binary-tree/description/
 
 543. 二叉树的直径
 简单
 1.2K
 相关企业
 给定一棵二叉树，你需要计算它的直径长度。一棵二叉树的直径长度是任意两个结点路径长度中的最大值。这条路径可能穿过也可能不穿过根结点。

  

 示例 :
 给定二叉树

           1
          / \
         2   3
        / \
       4   5
 返回 3, 它的长度是路径 [4,2,1,3] 或者 [5,2,1,3]。

  

 注意：两结点之间的路径长度是以它们之间边的数目表示。
 */

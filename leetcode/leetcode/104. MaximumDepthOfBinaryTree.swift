//
//  104. MaximumDepthOfBinaryTree.swift
//  leetcode
//
//  Created by Apple on 2019/9/12.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


//给定一个二叉树，找出其最大深度。
//
//二叉树的深度为根节点到最远叶子节点的最长路径上的节点数。
//
//说明: 叶子节点是指没有子节点的节点。
//
//示例：
//给定二叉树 [3,9,20,null,null,15,7]，
//
//3
/// \
//9  20
///  \
//15   7
//返回它的最大深度 3 。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/maximum-depth-of-binary-tree
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

class MaximumDepthOfBinaryTree {
    func maxDepth(_ root: TreeNode?) -> Int {
        
        guard root != nil else { return 0 }
//
//        return max(maxDepth(root?.left) , maxDepth(root?.right)) + 1
        
        var result = 0
        
        var stack = [(TreeNode?,Int)]()
        
        var lastNode = (node:root, count:1)
        stack.append(lastNode)
        
        while !stack.isEmpty {
            lastNode = stack.popLast()!
            
            if result < lastNode.count {
                result = lastNode.count
            }
            
            if lastNode.node?.left != nil {
                stack.append((lastNode.node?.left, lastNode.count + 1))
            }
            
            if lastNode.node?.right != nil {
                stack.append((lastNode.node?.right, lastNode.count + 1))
            }
        }
        
        
        return result
    }
}

//
//  226. InvertBinaryTree.swift
//  leetcode
//
//  Created by Apple on 2019/10/28.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class InvertBinaryTree {
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {

        if root == nil {
            return nil
        }

        let left = invertTree(root!.right)
        let right = invertTree(root!.left)
        root!.left = left
        root!.right = right
        return root
    }
}

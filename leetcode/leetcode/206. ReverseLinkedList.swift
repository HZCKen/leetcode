//
//  206. ReverseLinkedList.swift
//  leetcode
//
//  Created by Apple on 2019/9/4.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class ReverseLinkedList {
    
//    反转一个单链表。
//    
//    示例:
//
//    输入: 1->2->3->4->5->NULL
//    输出: 5->4->3->2->1->NULL
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        var curr = head
        var prev:ListNode?
//        假设存在链表 1 → 2 → 3 → Ø，我们想要把它改成 Ø ← 1 ← 2 ← 3。
//
//        在遍历列表时，将当前节点的 next 指针改为指向前一个元素。由于节点没有引用其上一个节点，因此必须事先存储其前一个元素。在更改引用之前，还需要另一个指针来存储下一个节点。不要忘记在最后返回新的头引用！

        //        [1, 2]
        while curr != nil {
            let next = curr?.next //[2, null] curr = [2, null] next = null
            curr?.next = prev // null curr.next = [1, null]
            prev = curr   //[1, null] [2, 1]
            curr = next  // [2, null] null
        }
      
        return prev
    }
}

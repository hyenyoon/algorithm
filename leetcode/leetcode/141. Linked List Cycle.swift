//
//  141. Linked List Cycle.swift
//  leetcode
//
//  Created by Hyenyoon Jung on 2022/01/12.
//

import Foundation

//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next;}
//}
//
//func hasCycle(_ head: ListNode?) -> Bool {
//    var once = head
//    var twice = head?.next
//
//    while let movedOnce = once, let movedTwice = twice {
//        if movedOnce === movedTwice { return true }
//        once = once?.next
//        twice = twice?.next?.next
//    }
//
//    return false
//}

//
//  21. Merge Two Sorted Lists.swift
//  leetcode
//
//  Created by Hyenyoon Jung on 2021/11/26.
//

import Foundation

//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next;}
//}

// https://leetcode.com/problems/merge-two-sorted-lists/discuss/1132854/Swift%3A-Merge-Two-Sorted-Lists-%2B-Tests

//func mergeTwoListsR(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
//    guard let l1 = list1 else {
//        return list2
//    }
//    guard let l2 = list2 else {
//        return list1
//    }
//
//    if l1.val < l2.val {
//        l1.next = mergeTwoListsR(l1.next, l2)
//        return l1
//    } else {
//        l2.next = mergeTwoListsR(l1, l2.next)
//        return l2
//    }
//}


// convert to Loop
//func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
//    if list1 == nil { return list2 }
//    if list2 == nil { return list1 }
//
//    var l1 = list1
//    var l2 = list2
//
//    var list = [ListNode]()
//
//    while l1 != nil || l2 != nil {
//        if l1 == nil {
//            list.append(l2!)
//            l2 = l2!.next
//        }
//        if l2 == nil {
//            list.append(l1!)
//            l1 = l1!.next
//        }
//
//        if l1!.val < l2!.val {
//            list.append(l1!)
//            l1 = l1!.next
//        } else {
//            list.append(l2!)
//            l2 = l2!.next
//        }
//    }
//
//    for i in 0 ..< list.count - 1 {
//        list[i].next = list[i+1]
//    }
//
//    return list[0]
//}

//: [Previous](@previous)

import Foundation

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    
    if head == nil {
        return nil
    }
    var current = head
    while current != nil {
        let nextNode = current!.next
        
        if nextNode?.val == current!.val {
            current!.next = nextNode?.next
        } else {
            current = current?.next
        }
    }
    
    return head
}

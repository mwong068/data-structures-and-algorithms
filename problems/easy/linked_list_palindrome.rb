# https://leetcode.com/problems/palindrome-linked-list/

# Palindrome Linked List

# Example 1:

# Input: 1->2
# Output: false

# Example 2:

# Input: 1->2->2->1
# Output: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}

def is_palindrome(head)
    array = []
    node = head
    until node == nil
        array.push(node.val)
        node = node.next
    end
    
    if array == array.reverse
        return true
    end
    
    return false
end
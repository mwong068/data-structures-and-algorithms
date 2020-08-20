# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    #     skip over val and assign to next position unless there is no next node
    #     go through linked list looking for val
        
        if head == nil
            return []
        end
            
        # if head.val == val
        #     if head.next != nil
        #         head = head.next
        #     else
        #         return []
        #     end
        # end
        
            dummy = ListNode.new(-1)
            dummy.next = head
            node = dummy
        
        while node && node.next
            if node.next.val == val
                node.next = node.next.next
            else
                node = node.next
            end
        end
        
        return dummy.next
    end
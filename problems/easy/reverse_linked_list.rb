class ListNode

    attr_accessor :value, :next

    def initialize(value)
        @value = value
        @next = nil
    end

end

def reverse_linked_list(head)
    current_node = head
    next_node = nil
    previous_node = nil

    while current_node
        next_node = current_node.next
        current_node.next = previous_node
        previous_node = current_node
        current_node = next_node
    end

    return previous_node
end

a = ListNode.new(1)
b = ListNode.new(2)
c = ListNode.new(3)
d = ListNode.new(4)
e = ListNode.new(5)
a.next = b
b.next = c
c.next = d
d.next = e
puts reverse_linked_list(a)
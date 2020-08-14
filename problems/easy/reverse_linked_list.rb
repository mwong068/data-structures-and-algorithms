def ListNode

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
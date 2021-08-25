# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', 
# determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
 

# Example 1:

# Input: s = "()"
# Output: true
# Example 2:

# Input: s = "()[]{}"
# Output: true
# keep track of the pairs of parentheses
# 
def is_valid(s)
    symbols = { "(" => ")", "{" => "}", "[" => "]" }
    starting = "([{"
    stack = []
    # s.each_char do |letter|
    #     if symbols[letter]
    #         stack.push(symbols[letter]) 
    #     end
    # end
    # stack.each do |things|
    #     if things 
    # end
    # puts stack
    
    s.each_char do |thing|
        if starting.include?(thing)
            stack.push(thing)
        end
    end

    stack.each do |test|
        if symbols[test]
            puts symbols[test]
            stack.pop()
        end
    end

    print stack

    if stack.length != 0
        return false
    else
        return true
    end

end

string = "([])"
puts is_valid(string)
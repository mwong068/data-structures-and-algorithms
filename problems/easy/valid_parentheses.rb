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
    stack = []
    s.each_char do |letter|
        if symbols[letter]
            stack.push(symbols[letter]) 
        else
            if symbols
        end
    end

    puts stack
end

string = "([])"
puts is_valid(string)
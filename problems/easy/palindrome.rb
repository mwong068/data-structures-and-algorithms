# https://leetcode.com/problems/valid-palindrome/

# Valid Palindrome

# Example 1:

# Input: "A man, a plan, a canal: Panama"
# Output: true

# Example 2:

# Input: "race a car"
# Output: false

def is_palindrome(s)
        alphabet = "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ0123456789"
        string = ""
     
        s.each_char do |letter|
            # if letter == /[a-zA-Z]/
            if alphabet.include?(letter)
                string += letter
            end
        end
        
        new_string = string.downcase
      
        if new_string == new_string.reverse
            return true
        end
        return false
        
    end
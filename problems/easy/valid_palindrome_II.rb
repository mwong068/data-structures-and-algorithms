# Valid Palindrome II

# Input: "aba"
# Output: True

# Input: "abca"
# Output: True
# Explanation: You could delete the character 'c'.

def valid_palindrome(s)
    #     like finding a regular palindrome - two pointers one at the beginning and one at the end
    #     if don't match, try removing a letter and see if they do
        
    start = 0
    ending = s.length - 1
    
    while start < ending
        if s[start] != s[ending]
            return isPalindrome(s, start + 1, ending) || isPalindrome(s, start, ending - 1)
        end
        start += 1
        ending -= 1
    end

    return true
    end
    
    def isPalindrome(string, start, ending)
        while start < ending
            if string[start] != string[ending]
                return false
            end
            start += 1
            ending -= 1
        end
        return true
    end
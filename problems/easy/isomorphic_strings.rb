# 205. Isomorphic Strings

# https://leetcode.com/problems/isomorphic-strings/

# Given two strings s and t, determine if they are isomorphic.

# Two strings are isomorphic if the characters in s can be replaced to get t.

# All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.

# Example 1:

# Input: s = "egg", t = "add"
# Output: true
# Example 2:

# Input: s = "foo", t = "bar"
# Output: false
# Example 3:

# Input: s = "paper", t = "title"
# Output: true

def is_isomorphic(s, t)
    s_hash = {}
    s_array = []
    t_hash = {}
    t_array = []
    
    s.each_char do |letter|
        if s_hash[letter]
            s_hash[letter] += 1
        else
            s_hash[letter] = 1
        end
    end
    
    t.each_char do |letter|
        if t_hash[letter]
            t_hash[letter] += 1
        else
            t_hash[letter] = 1
        end
    end
    
    s_hash.each do |key, value|
        s_array.push(value)
    end
    
     t_hash.each do |key, value|
        t_array.push(value)
    end
    
    if s_array == t_array
        return true
    else
        return false
    end
    
end
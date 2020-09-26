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

require 'set'

def is_isomorphic(s, t)

    if s.length != t.length
        return false
    end
    
    hash = {}
    
    i = 0
    while i < s.length
        if !hash[s[i]]
            hash[s[i]] = t[i]
        else
            if hash[s[i]] != t[i]
                return false
            end
        end
        i += 1
    end
    
    results = Set.new
    
    hash.each do |key, value|
        results << value
    end
    
    return results.size == hash.size
    
end
# https://leetcode.com/problems/longest-common-prefix/

# Longest Common Prefix

# Example 1:

# Input: ["flower","flow","flight"]
# Output: "fl"

# Example 2:

# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

def longestCommonPrefix(strs):
# =============Brute Force solution================================================================
#     iterate over each word and put into hash beginning strings of letters
#     iterate over hash and see if any combo has the same number in value as length of array
#         letters = {}
#         current_longest_prefix = ""
#         for word in strs:
#             current_word = ""   
#             for letter in word:
#                 current_word += letter
#                 if current_word in letters.keys():
#                     letters[current_word] += 1
#                 else:
#                     letters[current_word] = 1
        
#         for key, value in letters.items():
#             if (int(value) == len(strs)):
#                 current_longest_prefix = key

#         return current_longest_prefix


# =============Deletion solution================================================================

#         if(len(strs) == 0):
#             return ""
        
#         prefix = strs[0]
#         i = 1
#         while i < len(strs):
#             while strs[i].find(prefix) != 0:
#                 prefix = prefix[0:len(prefix)-1]
#             i += 1
            
#         return prefix
            
        
# =============Optimal solution================================================================
# find smallest word
# compare that word, letter by letter to all other words
    longest_common_prefix = ""

    if (len(strs) == 0 or strs is None):
        return longest_common_prefix

    # finds shortest string in list
    shortest_word = min(strs, key=len)
    # shortest_word_index = strs.index(shortest_word)
    # print(shortest_word_index)

    # first_word = [char for char in strs[0]]
    # i = 0
    # for letter in first_word:
    #     for j in range(1, len(strs)):
    #         if(i >= len(first_word) or strs[j][i] != letter):
    #             return longest_common_prefix
    #     longest_common_prefix += letter
    #     i += 1
    i = 0
    for letter in shortest_word:
        for j in range(0, len(strs)):
            if(i >= len(shortest_word) or strs[j][i] != letter):
                return longest_common_prefix
        longest_common_prefix += letter
        i += 1
        
    return longest_common_prefix

array2 = ["ab", "abc", "aa", "fff", "gdfgfdg","a", "bbb"]
array3 = ["flower", "flow", "flight"]
array = ["aa", "a"]

print(longestCommonPrefix(array2))

# first_word = ["a", "a"]
# i = 1
# letter = "a"
# j = 2
# 1 >= 2 or a != a
# longestCommonPrefix = a
# ["aa", "a"]
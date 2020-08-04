# https://leetcode.com/problems/longest-common-prefix/

# Longest Common Prefix

def longestCommonPrefix(self, strs: List[str]) -> str:
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


    return 
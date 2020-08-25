# https://leetcode.com/problems/longest-common-subsequence/

# 1143. Longest Common Subsequence

# Example 1:
# Input: text1 = "abcde", text2 = "ace" 
# Output: 3  
# Explanation: The longest common subsequence is "ace" and its length is 3.

# Example 2:
# Input: text1 = "abc", text2 = "abc"
# Output: 3
# Explanation: The longest common subsequence is "abc" and its length is 3.

# Example 3:
# Input: text1 = "abc", text2 = "def"
# Output: 0
# Explanation: There is no such common subsequence, so the result is 0.

# find shortest word
# compare each letter of shortest word to rest of words

def longest_common_subsequence(text1, text2)
    #     shorter_word = [text1.length, text2.length].min
        
    #     i = 0
    #     while i < shorter_word
    #         if text1[i] != text2[i]
                
    #         end
    #     end
        
        if text1.length > text2.length
            longer_word = text1
            shorter_word = text2
        else
            longer_word = text2
            shorter_word = text1
        end
    
        
        longer_counter = 0
        subsequence = []
        
        # i = 0
        # while longer_counter < longer_word.length
        #     if shorter_word[i] != longer_word[longer_counter]
        #         longer_counter += 1
        #     else
        #         i += 1
        #         longer_counter += 1
        #         counter += 1
        #     end
        # end
        
        i = 0
        while i < shorter_word.length
            j = i
            while j < longer_word.length
                if shorter_word[i] == longer_word[j]
                    subsequence.push(shorter_word[i])
                end
                j += 1
            end
            i += 1
        end
        
        return subsequence.length
    end
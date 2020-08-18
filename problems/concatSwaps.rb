# concatSwaps

# You are given a string s, and an array of positive integers sizes, where the sum of all the elements of sizes is equal to the length of s. More formally, sizes[0] + sizes[1] + ... + sizes[sizes.length - 1] = s.length

# Your task is to:
#     1. Split the given string s into substrings of length sizes[0], sizes[1], ... , sizes[sizes.length - 1] respectively;
#     2. Swap the obtained substrings in pairs: swap the first substring with the second one, the third substring with the fourth substring, etc. If the number of substrings is odd, leave the last substring in place.
#     3. Concatenate the swapped substrings back into one string, and return the resulting string as the answer.

#     Example:
#         - For s = "descognail" and sizes = [3, 2, 3, 1, 1], the output should be concatSwaps(s, sizes) = "codesignal".

#             s:| d e s | | c o | | g n a | | i | | l |
#         sizes:|   3   | |  2  | |   3   | | 1 | | 1 |
        
#         - For s = "secondfirst" and sizes = [6, 5], the output should be concatSwaps(s, sizes) = "firstsecond".

#     Input:
#         - [input] string s 
#             A sring consisting of lowercase English letters.
# 168. Excel Sheet Column Title

# https://leetcode.com/problems/excel-sheet-column-title/

# Given a positive integer, return its corresponding column title as appear in an Excel sheet.

# For example:

#     1 -> A
#     2 -> B
#     3 -> C
#     ...
#     26 -> Z
#     27 -> AA
#     28 -> AB 
#     ...
# Example 1:

# Input: 1
# Output: "A"
# Example 2:

# Input: 28
# Output: "AB"
# Example 3:

# Input: 701
# Output: "ZY"


# SOLUTION 1 --------------------------------------------------------------------------------------------------
# def convert_to_title(num)
#     capitals = {
#         1 => "A",
#         2 => "B", 
#         3 => "C", 
#         4 => "D", 
#         5 => "E", 
#         6 => "F", 
#         7 => "G", 
#         8 => "H", 
#         9 => "I", 
#         10 => "J", 
#         11 => "K", 
#         12 => "L", 
#         13 => "M", 
#         14 => "N",
#         15 => "O",
#         16 => "P",
#         17 => "Q",
#         18 => "R",
#         19 => "S",
#         20 => "T",
#         21 => "U",
#         22 => "V",
#         23 => "W",
#         24 => "X",
#         25 => "Y",
#         26 => "Z" }
    
#     result = []
    
#     while num > 0
#        letter = (num-1) % 26
#        result.push(capitals[letter+1])
#        num = (num-1) / 26
#        puts num
#     end

#     return result.reverse.join

# end



# SOLUTION 2 ----------------------------------------------------------------------------------------------
def convert_to_title(n)

    result = ''
    distance = ('A').ord 

    while n > 0
        y = (n-1) % 26
        n = (n-1) / 26
        s = (y+distance).chr
        result += s
    end

    return result.reverse

end


puts convert_to_title(701)
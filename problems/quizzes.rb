# Email thread:
# Given an array of strings, the strings are email addresses separated by commas and a message is the last item in the string. Each message thread is denoted by a delimiter ---
# break down the email chains into threads as indicated by the output.
# the sender and reciever for the email addresses can be in different order but are the same thread
# Input (stdin)
# 3
# abc@gmail.com, x@gmail.com, hello x, how are you?
# c@gmail.com, abc@gmail.com, did you take a look at the event?
# x@gmail.com, abc@gmail.com, i am great. how are you?---hello x, how are you?

# Expected Output
# 1 1
# 2 1
# 1 2
# [[1,1], [2,1], [1,2]]

def email_thread(array)

end

# =====================================================================================

# Better Compression:
# Given a string input, the numbers indicated after the letter need to be added together in the final output
# Input (stdin)
# a12b56a1c1
# Expected Output
# a13b56c1

def better_compression(string)
    chars = string.split("")
    alphabet = { "a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12, "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19, "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24, "y" => 25, "z" => 26 }
    results = {}
    final = []
    i = 0
    while i < string.length
        char = chars[i]
        if alphabet[char]
            start = i + 1
            ending = start
            while ending < string.length && alphabet[chars[ending]] == nil
                ending += 1
            end

            count = string[start...ending].to_i
            if results[char]
                results[char] += count
            else
                results[char] = count
            end
            i = ending
        else
            i += 1
        end
    end
    
    answer = ""
    results.each do |letter, number|
        answer += letter + number.to_s
    end

    return answer
end

puts better_compression('a12b1c2a4')



#  =====================================================================================

# Build the Subsequences
# https://leetcode.com/problems/distinct-subsequences-ii/solution/
# Given a string find all of the different outputs that can be made from the string
# Input (stdin)
# ba
# Expected Output
# a
# b
# ba
# [a, b, ba]

# Input (stdin)
# abc
# Expected Output
# a
# ab
# abc
# ac
# b
# bc
# c
# [a, ab, abc, ac, b, bc, c]

# def subsequences(string)

    # result = []


    # if string == nil
    #     return result
    # end

    # answers = {}
    # size = string.length

    # for i in (0..size)
    #     j = i
    #     while j < string.length
    #         substring = string[i..j]
    #         if answers[substring] == nil
    #             answers[substring] = 1
    #             result.push(substring)
    #         end
    #         j += 1
    #     end
    # end

    # char = string[0]
    # substring = string[1..size - 1]
    # puts substring
    # sequence = subsequences(substring)

    # result = []

    # for letter in sequence
    #     result.push(letter)
    #     result.push(char + letter)
    # end

  

    # return result

#     def print_subsequences(str)
#         temp = []
#         i = 0
#         solve(str, i, temp)
#     end

#     def solve(str, index, temp)
#         if index == str.length
#             print_stuff(str, temp)
#         end

#         temp[index] = 1
#         solve(str, index + 1, temp)

#         temp[index] = 0
#         solve(str, index + 1, temp)
#     end

#     def print_stuff(str, temp)
#         result = ""
#         for i in (0..temp.length)
#             if temp[i] == 1
#                 result += str[i] + " "
#             end
#         end

#         if result == ""
#             result = " "
#             return result
#         end
#     end

# # end

# puts print_subsequences("abc")
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
end


#  =====================================================================================

# Build the Subsequences
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

def subsequences(string)

    result = []

    if string == nil
        return result
    end

    answers = {}

    for i in (0..string.length)
        j = i
        while j < string.length
            substring = string[i..j]
            # if answers[substring] === nil
                result.push(substring)
            # end
            j += 1
        end
    end

    return result

end

puts subsequences("ab")
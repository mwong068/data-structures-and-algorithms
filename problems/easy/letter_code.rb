Input: 12
Output: 2

Input: 123
Output: 3

# loop through string and determine if one integer can represent one letter, etc.

def letter_code(string)
    total = 0

    i = 0
    while i < string.length
        if (string[i]).to_i <= 26
            total += 1
            if (string[i] + string[i+1]).to_i <= 26
                total += 1
            end        
        end
    end
end
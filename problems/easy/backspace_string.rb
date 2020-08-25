# https://leetcode.com/problems/backspace-string-compare/

# 844. Backspace String Compare

def backspace_compare(s, t)
    new_s = []
    new_t = []
    
    s.each_char do |letter|
        if letter == "#"
            new_s.pop
        else
            new_s.push(letter)
        end
    end
    
    t.each_char do |letter|
        if letter == "#"
            new_t.pop
        else
            new_t.push(letter)
        end
    end
    
    if new_s.join == new_t.join
        return true
    else
        return false
    end

end
# s = "leetcode"
# return 0.

# s = "loveleetcode"
# return 2.

def one_letter(string)
    letters = {}
    string.each_char do |letter|
      if letters[letter]
        letters[letter] += 1
      else
        letters[letter] = 1
      end
    end
  
    i = 0
    while i < string.length
      if letters[string[i]] == 1
        return i
      end
      i += 1
    end
        
    return -1
  end
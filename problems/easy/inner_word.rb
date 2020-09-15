# Input:
#  words = [cat, dog, baby, chicken]
#  string1 = "jsjcawet"
#  string2 = "bbbbbbbb"
#  string3 = "babybwere"

#  Output:
#  string1: cat
#  string2: none
#  string3: baby

def inner_word(words, string)
    words_hash = {}
    string_hash = {}
    word_to_return = []

    words.each do |word|
        words_hash[word] = hash_word(word)
    end

    string.each_char do |letter|
        if string_hash[letter]
            string_hash[letter] += 1
        else
            string_hash[letter] = 1
        end
    end

    words_hash.each do |key, value|
        value.each do |key, value|
            if string_hash[key]
                if string_hash[key] < value
                    return nil
                else
                    print key.to_s
                    word_to_return.push(key.to_s)
                end
            end
        end
    end

    return word_to_return
end

def hash_word(word)
    word_hash = {}

    word.each_char do |letter|
        if word_hash[letter]
            word_hash[letter] += 1
        else
            word_hash[letter] = 1
        end
    end

    return word_hash
end


puts inner_word(["chicken", "dog", "nugget"], "doggie")
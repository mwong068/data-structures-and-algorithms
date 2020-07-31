# Fun with Anagrams

# input: ["code", "anagram", "granaam" "doce"]
# output: ["code", "anagram"]

def anagrams(array)
    i = 0
    while i < array.length
        j = array.length - 1
        while j > i
            word_a = array[i].split("").sort.join("")
            word_b = array[j].split("").sort.join("")

            if word_a == word_b
                array.delete_at(j)
            end

            j -= 1
        end
        i += 1
    end
    return array.sort
end

input = ["code", "anagram", "granaam" "doce"]
puts anagrams(input)
def detect_capital_use(word)

    # working solution ==========================================================================
    
    whole_capital = false
    no_caps = false
    one_cap = false
        
    if word.length == 1
        return true
    end
    
    if word[0] == word[0].capitalize && word[1] == word[1].capitalize
        whole_capital = true
    elsif word[0] == word[0].capitalize && word[1] != word[1].capitalize
        one_cap = true
    elsif word[0] != word[0].capitalize && word[1] != word[1].capitalize
        no_caps = true
    else
        return false
    end
    
# case 1: whole word capitalized
    if whole_capital == true
        i = 2
        while i < word.length
            if word[i] != word[i].capitalize
                return false
            end
            i+=1
        end
    end
    
# case 2: no capitals & case 3: first letter capital only
    if no_caps == true || one_cap == true
        i = 2
        while i < word.length
            if word[i] == word[i].capitalize
                return false
            end
            i+=1
        end
    end
    
 return true

#  optimal solution ==========================================================

    if word.length == 1
        return true
    end
    
    if word.capitalize == word || word.downcase == word || word.upcase == word
        return true
    else
        return false
    end

end
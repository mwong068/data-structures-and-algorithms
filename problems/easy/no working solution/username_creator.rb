# Username Creator
# [cool, coolbeans, cool, coolerbeans, coolbeans, cool, cool]
# [cool, coolbeans, cool1, coolerbeans, coolbeans1, cool2, cool3]
# want to add consecutive digits after the word if the name has occured already

def username_creator(array)
    username_hash = {}
    results = []

    array.each do |username|
        if username_hash[username]
            username += 1
        else
            username_hash[username] = 1
        end
    end

    username_hash.each do |key, value|
        results.push(key)
    end

    return results
end
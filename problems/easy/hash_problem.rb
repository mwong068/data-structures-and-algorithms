# sample input: [['foo', 'one'], ['bar', 'two'], ['baz', 'three']]
# sample output: {'foo': 'one', 'bar': 'two', 'baz': 'three'}

def making_pairs(array)
    pairs = {}
    i = 0
    while i < array.length
        pairs[array[i][0]] = array[i][1]
        i += 1
    end
    return pairs
end
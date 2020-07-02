def insertion_sort(array)
    for i in 1...(array.length)
        j = i
        while j > 0
            if array[j-1] > array[j]
                temp = array[j]
                array[j] = array[j-1]
                array[j-1] = temp
            else
                break
            end
            j = j - 1
        end
    end
    return array
end

def insertion_sort(array)
    for i in 1...(array.length)
        value = array[i]
        temp = i
        while temp > 0 && array[temp - 1] > value
            array[temp] = array[temp - 1]
            temp = temp - 1
        end
        array[temp] = value
    end
    return array
end

print(insertion_sort([13, 2, 15, 5, 8, 11, 1]))

2, 5, 13, 15, 8, 11, 1]
i = 3
j = 1
temp = 5
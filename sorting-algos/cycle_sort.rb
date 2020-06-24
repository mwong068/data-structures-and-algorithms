def cycle_sort(array, writes)
    writes = 0
    cycleStart = 0

    # [26, 42, 48, 68, 79]
    # cycleStart = 3
    # item = 48
    # pos = 4
    # i = 4
    # writes = 2

    while cycleStart < array.length - 1
        item = array[cycleStart]
        pos = cycleStart

        i = cycleStart + 1
        while i < array.length
            if array[i] < item
                pos += 1
            end
            i += 1
        end

        if pos != cycleStart
            while item == array[pos]
                pos += 1
            end
            
            array[pos], item = item, array[pos]
            writes += 1
        end

        while pos != cycleStart
            pos = cycleStart

            j = cycleStart + 1
            while j < array.length - 1
                if array[j] < item
                    pos += 1
                end

                while item == array[pos]
                    pos += 1
                end

                j += 1
            end
            
            array[pos], item = item, array[pos]
            writes += 1
        end

        cycleStart += 1
    end
        
    return array, writes

end

print(cycle_sort([26, 68, 79, 42, 48], [0]))

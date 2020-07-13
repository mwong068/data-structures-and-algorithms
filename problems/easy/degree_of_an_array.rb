# @param {Integer[]} nums
# @return {Integer}
def find_shortest_sub_array(nums)
    # variable to keep track of the length of smallest subarray
    # what is the maximum frequency of its elements
    # sliding window technique
    # beginning and end to the "window"
    
        frequency = {}
        highest_frequency = 0
        
        first_seen = {}
        smallest_subarray = 0

        if nums.length == 1
            return 1
        end
        
        for i in 0..nums.length - 1
           if frequency[nums[i]]
                frequency[nums[i]] += 1
           else
                frequency[nums[i]] = 1
                first_seen[nums[i]] = i
            end

            
            if frequency[nums[i]] > highest_frequency
                highest_frequency = frequency[nums[i]]
                smallest_subarray = i - first_seen[nums[i]] + 1
            elsif frequency[nums[i]] == highest_frequency
                smallest_subarray = [smallest_subarray, (i - first_seen[nums[i]] + 1)].min
            end
            
        end

        return smallest_subarray
        
    end

    puts find_shortest_sub_array([1,2,2,3,1,4,2])

    i = 3
    frequency = { 1 => 2, 2 => 2, 3 => 1, }
    highest_frequency = 2
    first_seen = { 1 => 0, 2=> 1, 3 => 3, }
    smallest_subarray = 2
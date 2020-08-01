def move_zeroes(nums)
    #     brute force - delete zero and add it to the end
    #     in place - find zero and then swap each element after until you get to the end
        # i = 0
        # while i < nums.length
        #     if nums[i] == 0
        #         j = i+1
        #         while j < nums.length
        #             if nums[j] != 0
        #                 nums[i], nums[j] = nums[j], nums[i]
        #                 j = nums.length - 1
        #             end
        #             j += 1
        #         end
        #     end
        #     i += 1
        # end
        
        counter = 0
        i = 0
        while i < nums.length
            if nums[i] != 0
                nums[counter] = nums[i]
                counter += 1
            end
            i += 1
        end
        
        while counter < nums.length
            nums[counter] = 0
            counter += 1
        end
    end
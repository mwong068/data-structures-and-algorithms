import math

class Solution:
    def thirdMax(self, nums: List[int]) -> int:
# variables for each first, second, and third maximum
# loop through the list, replacing each value as a larger one is found
# return third largest unless third largest isn't valid, etc.

        first_max = -math.inf
        second_max = -math.inf
        third_max = -math.inf
        
        numbers = list(dict.fromkeys(nums))
        
        for num in numbers:
            if(num > first_max):
                third_max = second_max
                second_max = first_max
                first_max = num
            elif(num < first_max and num > second_max):
                third_max = second_max
                second_max = num
            elif(num < second_max and num > third_max):
                third_max = num
        
        if (third_max == -math.inf):
            return first_max
        else:
            return third_max
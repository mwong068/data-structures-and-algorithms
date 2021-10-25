# https://leetcode.com/problems/first-bad-version/

# First Bad Version

# Input: n = 5, bad = 4
# Output: 4
# Explanation:
# call isBadVersion(3) -> false
# call isBadVersion(5) -> true
# call isBadVersion(4) -> true
# Then 4 is the first bad version.

def first_bad_version(n)
    middle = n / 2
    puts n
    if is_bad_version(middle) == true
#         start here and go backwards until you find the first false one
        while middle >= 0
            puts middle
            if is_bad_version(middle) == false
                return middle
            else
                middle -= 1
            end
        end
    else
        while middle < n
            puts middle
            if is_bad_version(middle) == true
                return middle
            end
            middle += 1
        end
    end
end
# Permutations

# Input: [ABC]
# Output:
# [
#     ABC,
#     ACB

#     BAC,
#     BCA

#     CAB,
#     CBA
# ]

# recursive

def permutations(string)
    # base case
    if string.length == 0
        return string
    end

    results = []

    i = 0
    while i < string.length
        first_letter = string[i]
        rest = string[i+1..-1]
        permutes = permutations(rest)
        
        permutes.each do |permuties|
            results.push(first_letter += permuties)
        end
    end

    return results

end

# python solution
def toString(List): 
    return ''.join(List) 
  
# Function to print permutations of string 
# This function takes three parameters: 
# 1. String 
# 2. Starting index of the string 
# 3. Ending index of the string. 
def permute(a, l, r): 
    if l==r: 
        print toString(a) 
    else: 
        for i in xrange(l,r+1): 
            a[l], a[i] = a[i], a[l] 
            permute(a, l+1, r) 
            a[l], a[i] = a[i], a[l] # backtrack 
  
# Driver program to test the above function 
string = "ABC"
n = len(string) 
a = list(string) 
permute(a, 0, n-1) 
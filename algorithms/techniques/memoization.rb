# without memoization
# def fibonacci(n)
#     if n == 1 || n == 2
#         result = 1
#     else
#         result = fibonacci(n-1) + fibonacci(n-2)
#     end
#     return result
# end

# with memoization
def fibonacci(n, memo)
    if memo[n] != nil
        return memo[n]
    end

    if n == 1 || n == 2
        result = 1
    else
        result = fibonacci(n-1, memo) + fibonacci(n-2, memo)
        memo[n] = result
    end
    return result
end


memo = []
puts fibonacci(10, memo)
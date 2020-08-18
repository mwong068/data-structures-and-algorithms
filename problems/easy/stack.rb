class MinStack

    =begin
        initialize your data structure here.
    =end
        def initialize()
            @stack = []
        end
    
    
    =begin
        :type x: Integer
        :rtype: Void
    =end
        def push(x)
            @stack.push(x)
        end
    
    
    =begin
        :rtype: Void
    =end
        def pop()
            @stack.pop
        end
    
    
    =begin
        :rtype: Integer
    =end
        def top()
            @stack[-1]
        end
    
    
    =begin
        :rtype: Integer
    =end
        def get_min()
            # smallest = Float::INFINITY
            # @stack.each do |item|
            #     if item < smallest
            #         smallest = item
            #     end
            # end
            # return smallest
            @stack.min
        end
    
    
    end
    
    # Your MinStack object will be instantiated and called as such:
    # obj = MinStack.new()
    # obj.push(x)
    # obj.pop()
    # param_3 = obj.top()
    # param_4 = obj.get_min()
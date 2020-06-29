# Min Stack

# https://leetcode.com/problems/min-stack/

# Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

# push(x) -- Push element x onto stack.
# pop() -- Removes the element on top of the stack.
# top() -- Get the top element.
# getMin() -- Retrieve the minimum element in the stack.


# code from joseph
class MinStack:

      def __init__(self):    
        self.stack = []
        self.min_stack = []
        

    def push(self, x: int) -> None:
        if len(self.min_stack) == 0:
            self.min_stack.append(x)
        elif self.min_stack[-1] >= x:
            self.min_stack.append(x)
        self.stack.append(x)
        

    def pop(self) -> None:
        if self.stack[-1] == self.min_stack[-1]:
            self.min_stack.pop()
        self.stack.pop()
        

    def top(self) -> int:
        if len(self.stack) == 0:
            return False
        return self.stack[-1]

    def getMin(self) -> int:
        if len(self.min_stack) == 0:
            return False
        return self.min_stack[-1]
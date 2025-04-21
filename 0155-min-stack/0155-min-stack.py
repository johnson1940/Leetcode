class MinStack:

    def __init__(self):
        self.stack = []
        self.min_stack = []
        

    def push(self, val: int) -> None:
        self.stack.append(val)
        min_element = min(val, self.min_stack[-1] if self.min_stack else val)
        self.min_stack.append(min_element)
        

    def pop(self) -> None:
        self.stack.pop()
        self.min_stack.pop()
        
    def top(self) -> int:
        return self.stack[-1] 
        #if self.stack is not None else []
        

    def getMin(self) -> int:
        return self.min_stack[-1] 
        #if self.min_stack is not None else []


# Your MinStack object will be instantiated and called as such:
# obj = MinStack()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.getMin()
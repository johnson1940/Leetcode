from collections import deque
class Solution:
    def removeStars(self, s: str) -> str:
        stack = deque()

        for char in s:
            if char != "*":
                stack.append(char)
            else:
                stack.pop()

        return "".join(stack)            
        
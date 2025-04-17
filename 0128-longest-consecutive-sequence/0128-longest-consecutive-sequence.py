class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:

        # initilise the num set
        numSet = set(nums)
        longest_seq  = 0
        for n in numSet:

            if (n - 1) not in numSet:
                length = 0
                while (n + length) in numSet:
                    length += 1
                longest_seq = max(length, longest_seq)

        return longest_seq            
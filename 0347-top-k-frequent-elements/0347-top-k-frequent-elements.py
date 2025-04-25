class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        
        freq_ele = {}

        for n in nums:
            if n in freq_ele:
                freq_ele[n] += 1
            else:
                freq_ele[n] = 1

        bucket = [[] for _ in range(len(nums) + 1)]

        for num, freq in freq_ele.items():
            bucket[freq].append(num)

        result = []
        for i in range(len(bucket)-1, 0 , -1):
            for num in bucket[i]:
                result.append(num)
                if len(result) == k:
                    return result      
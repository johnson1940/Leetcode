class Solution:
    def pivotArray(self, nums: List[int], pivot: int) -> List[int]:
        smaller_list = []
        larger_list = []
        equal_list = []
        for num in nums:
            if num < pivot:
                smaller_list.append(num)
            elif num > pivot:
                larger_list.append(num)
            else:
                equal_list.append(num) 
        result = smaller_list + equal_list + larger_list           
        return result            

        
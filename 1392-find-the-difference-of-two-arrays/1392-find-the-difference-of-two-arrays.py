class Solution:
    def findDifference(self, nums1: List[int], nums2: List[int]) -> List[List[int]]:
        set1 = set(nums1)
        set2 = set(nums2)

        dif1 = list(set1 - set2)
        dif2 = list(set2 - set1)

        return [dif1, dif2]            

        
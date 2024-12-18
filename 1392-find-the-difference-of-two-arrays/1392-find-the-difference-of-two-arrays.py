class Solution:
    def findDifference(self, nums1: List[int], nums2: List[int]) -> List[List[int]]:
        uni_ele1 = []
        uni_ele2 = []

        for item in nums1:
            if item not in nums2:
                if item not in uni_ele1:
                   uni_ele1.append(item)

        for item in nums2:
            if item not in nums1:
                if item not in uni_ele2:
                   uni_ele2.append(item)

        return [uni_ele1, uni_ele2]                

        
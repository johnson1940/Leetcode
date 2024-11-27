class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        list_sum = nums1 + nums2
        list_sum.sort()
        list_length = len(list_sum)
        mid = list_length // 2
        if list_length % 2 == 0:
           return (list_sum[mid] + list_sum[mid - 1]) / 2
        else:
           return list_sum[mid]    
        
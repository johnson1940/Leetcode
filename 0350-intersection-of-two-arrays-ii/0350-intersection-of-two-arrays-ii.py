class Solution:
    def intersect(self, nums1: List[int], nums2: List[int]) -> List[int]:
        nums1.sort()
        nums2.sort()
        result = []

        first_point = second_point = 0

        while first_point < len(nums1) and second_point < len(nums2):
            if nums1[first_point] < nums2[second_point]:
                first_point += 1
            elif nums1[first_point] > nums2[second_point]:
                second_point += 1
            else:
                result.append(nums1[first_point])
                first_point += 1
                second_point += 1
        return result                 
        
class Solution:
    def threeSum(self, nums: List[int]) -> List[List[int]]:
        nums.sort()
        result_set = set()
        n = len(nums)

        for first_p in range(n):
            second_p = first_p + 1
            third_p = n-1

            while second_p < third_p:
                result =  nums[first_p] + nums[second_p] + nums[third_p]
                if result == 0:
                    result_set.add((nums[first_p], nums[second_p], nums[third_p]))
                    second_p += 1
                    third_p -= 1
                elif result < 0:
                    second_p += 1
                else:
                    third_p -= 1

        return [list(triplet) for triplet in result_set]                      



        
class Solution(object):
    def twoSum(self, nums, target):
        l = len(nums)
        for i in range(0, l - 1):
            for j in range(i + 1, l):
                if nums[i] + nums[j] == target:
                    return [i, j]
        return []      
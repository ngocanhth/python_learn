# cach 1: ngu
nums = [2,7,11,15]
target = 9


# class Solution(object):
#     def twoSum(self, nums, target):
#         """
#         :type nums: List[int]
#         :type target: int
#         :rtype: List[int]
#         """
#         required = {}
#         for i in range(len(nums)):
#             if target - nums[i] in required:
#                 return [required[target - nums[i]],i]
#             else:
#                 required[nums[i]]=i

# input_list = [2,8,12,15,5]
# ob1 = Solution()
# print(ob1.twoSum(input_list, 20))


class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:
        prevMap = {} # val: index
        
        for i, num in enumerate(nums):
            diff = target - num
            if(diff in prevMap):
                return [prevMap[diff], i]
            prevMap[num] = i
        return
input_list = [2,8,12,15,5]
ob1 = Solution()
print(ob1.twoSum(input_list, 20))
class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        hash_map = {}

        for num in nums:
            if num in hash_map:
                hash_map[num] += 1
            else:
                hash_map[num] = 1

        for key, value in hash_map.items():
            if value == 1:
                return key

        # result = 0
        # for num in nums:
        #     result = result ^ num
        # return result
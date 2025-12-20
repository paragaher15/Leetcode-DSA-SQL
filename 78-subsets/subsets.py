class Solution:
    def subsets(self, nums: List[int]) -> List[List[int]]:
        n = len(nums)
        sub = []
        for i in range(1 <<n):
            subseq = []

            for j in range(n):
                if i & (1 << j):
                    subseq.append(nums[j])
            sub.append(subseq)
        return sub            
        
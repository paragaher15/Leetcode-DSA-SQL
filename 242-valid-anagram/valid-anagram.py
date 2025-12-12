class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        hash_map = {}
        hash_map1 = {}

        for ch in s:
            if ch in hash_map:
                hash_map[ch] += 1
            else:
                hash_map[ch] = 1

        for ch in t:
            if ch in hash_map1:
                hash_map1[ch] += 1
            else:
                hash_map1[ch] = 1

        if hash_map == hash_map1:
            return True
        
        return False

import math
class Solution(object):
    def pickGifts(self, gifts, k):
        for i in range(k):
            max = gifts[0]
            c = c1 = 0
            for j in gifts:
                if max < j:
                    max = j
                    c1 = c
                c += 1
            gifts[c1] = int(math.sqrt(max))
        return sum(gifts)
        """
        :type gifts: List[int]
        :type k: int
        :rtype: int
        """     
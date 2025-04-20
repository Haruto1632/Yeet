class Solution(object):
    def divide(self, dividend, divisor):
        max = 2**31 - 1
        min = -2**31
        
        if dividend == min and divisor == -1:
            return max
        elif dividend * divisor < 0:
            q = abs(dividend) // abs(divisor)
            return -q
        else:
            q = abs(dividend) // abs(divisor)
            return q
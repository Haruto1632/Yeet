class Solution(object):
    import math
    def divide(self, dividend, divisor):
        if dividend >= 0 and divisor > 0:
            q = dividend / divisor
            return q
        elif dividend <= 0 and divisor < 0:
            q = abs(dividend) / abs(divisor)
            return q
        else:
            q = abs(dividend) / abs(divisor)
            q = -q
            return q
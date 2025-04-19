class Solution(object):
    def isPalindrome(self, x):
        x1 = str(x)[::-1]
        if(x1 == str(x)):
            return True
        else:
            return False
        """
        :type x: int
        :rtype: bool
        """
        
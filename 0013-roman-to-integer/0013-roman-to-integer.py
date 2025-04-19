class Solution(object):
    def romanToInt(self, s):
        conv = { 'I': 1, 'V': 5, 'X': 10, 'L': 50,
        'C': 100, 'D': 500, 'M': 1000 }
        S = 0
        for i in range(len(s)):
            if i + 1 < len(s) and conv[s[i]] < conv[s[i+1]]:
                S -= conv[s[i]]
            else:
                S += conv[s[i]]
        return S
        
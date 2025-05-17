class Solution {
public:
    bool isPalindrome(int x) {
        if (x < 0)
            return false;
        int x1 = x, d;
        long s = 0;
        while(x1 > 0) {
            d = x1 % 10;
            x1 /= 10;
            s = s * 10 + d;
        }
        return s == x;
    }
};
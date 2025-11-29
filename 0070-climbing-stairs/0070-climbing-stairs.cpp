class Solution {
public:
    int climbStairs(int n) {
        unordered_map <int, int> memo;
        if(n == 1) return 1;
        if(n == 2) return 2;
        if (memo.count(n)) return memo[n];
        memo[n] = climbStairs(n - 1) + climbStairs(n - 2);
        return memo[n];
    }
};
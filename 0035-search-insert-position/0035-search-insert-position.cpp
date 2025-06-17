class Solution {
public:
    int searchInsert(vector<int>& nums, int target) {
        int n = nums.size(), c = 0;
        for(int i = 0; i < n; i++){
            if(nums[i] < target)
                c++;
            else
                return c;
        }
        return c;
    }
};
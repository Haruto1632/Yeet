class Solution {
public:
    bool isAnagram(string s, string t) {
        vector<int> vs(26,0);
        vector<int> vt(26,0);
        int n= s.size(), m = t.size();
        if(n!=m) return false;

        for(int i=0; i<n; i++){
            vs[s[i]-'a']++;
            vt[t[i]-'a']++;
        }
        return vs == vt;
    }
};
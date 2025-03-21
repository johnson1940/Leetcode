class Solution:
    def isIsomorphic(self, s: str, t: str) -> bool:
        s_string = {}
        t_string = {}

        for i in range(len(s)):
            if s[i] not in s_string:
                s_string[s[i]] = i

            if t[i] not in t_string:
                t_string[t[i]] = i

            if s_string[s[i]] != t_string[t[i]]:
                return False

        return True               
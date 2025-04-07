class Solution:
    def maxScore(self, s: str) -> str:
        zero_count = 0
        ones_count = 0
        total_ones_found = s.count('1')
        best_score = float('-inf')

        for i in range(len(s) - 1):
            if s[i] == '0':
                zero_count += 1
            else:
                ones_count += 1

            current_score = zero_count + (total_ones_found - ones_count)
            best_score = max(best_score, current_score)

        return best_score            

        
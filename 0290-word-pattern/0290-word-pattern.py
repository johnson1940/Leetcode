class Solution:
    def wordPattern(self, pattern: str, s: str) -> bool:
        words = s.split()
        if len(pattern) != len(words):
            return False

        char_to_words = {}
        words_to_char = {}

        for ch, word in zip(pattern, words):

            if ch in char_to_words and char_to_words[ch] != word:
               return False

            if word in words_to_char and words_to_char[word] != ch:
               return False         


            char_to_words[ch] = word
            words_to_char[word] = ch

        return True    



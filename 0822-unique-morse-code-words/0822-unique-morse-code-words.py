class Solution:
    def uniqueMorseRepresentations(self, words: List[str]) -> int:
        morse_code = code = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]

        set_of_code = set()

        for i in words:
            l = ""
            for j in i:
                l += code[ord(j) - 97]
            set_of_code.add(l)    
        return len(set_of_code)    

        
        
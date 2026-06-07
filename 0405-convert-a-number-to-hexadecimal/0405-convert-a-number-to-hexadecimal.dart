class Solution {
    String toHex(int num) {
    if (num == 0) return "0";
    
    const hexChars = "0123456789abcdef";
    String result = "";
    
    // Apply a 32-bit mask to handle negative numbers safely across Dart platforms
    int n = num & 0xFFFFFFFF;
    
    while (n > 0) {
      // Extract the last 4 bits and prepend the corresponding character
      result = hexChars[n & 15] + result;
      
      // Unsigned right shift by 4 bits
      n >>>= 4; 
    }
    
    return result;
  }
}
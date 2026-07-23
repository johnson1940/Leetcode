class Solution {
  List<List<int>> merge(List<List<int>> intervals) {
     intervals.sort((a, b) => a[0].compareTo(b[0]));

      List<List<int>> result = [intervals[0]];

      for(int i = 1 ; i < intervals.length ; i++) {
         List<int> last = result.last;
         int start = intervals[i][0];
         int end = intervals[i][1];

         if(start <= last[1]) { 
            last[1] = max(last[1], end);
         }
         else {
            result.add([start, end]);
         }
      }
    return result;  
  }
}
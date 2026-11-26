class Solution {
  bool isValidSudoku(List<List<String>> board) {
       
       List<Set<String>> rows = List.generate(9, (_) => {});
       List<Set<String>> cols = List.generate(9, (_) => {});
       List<Set<String>> boxes = List.generate(9, (_) => {});

       for(int row = 0 ; row < 9 ; row++) {
           for(int col = 0; col < 9 ; col++) {

               String num = board[row][col];

               if(num == '.') continue;

               int boxIndex = (row ~/ 3) * 3 + (col ~/ 3);

               if(rows[row].contains(num) || 
                  cols[col].contains(num) ||
                  boxes[boxIndex].contains(num)) {
                    return false;
                }

            rows[row].add(num);
            cols[col].add(num);
            boxes[boxIndex].add(num);
           }
       }
    return true;   
  }
}
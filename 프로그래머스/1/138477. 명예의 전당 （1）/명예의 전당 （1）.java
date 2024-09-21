import java.util.LinkedList;
import java.util.Collections;

class Solution {
    public int[] solution(int k, int[] score) {
        
        LinkedList<Integer> list = new LinkedList<>();
        int[] answer = new int[score.length];

        for (int i = 0; i < score.length; i++) {
            list.add(score[i]);
            Collections.sort(list, Collections.reverseOrder()); 
            
            if (list.size() > k)
                list.removeLast(); 

            answer[i] = list.get(list.size() - 1);
        }
        
        return answer;
    }
}

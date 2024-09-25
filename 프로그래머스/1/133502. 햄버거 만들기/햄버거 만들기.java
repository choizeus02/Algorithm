import java.util.*;
import java.util.stream.*;

class Solution {
    public int solution(int[] ingredient) {
        
        int answer = 0;
        ArrayList<Integer> list = new ArrayList<> (
            Arrays.stream(ingredient).boxed().collect(Collectors.toList())  );

        int lastIndex = 0;
        
        for(int i=0; i< list.size() && list.size()>3; i++){
            
            if(list.get(i) == 1){
                
                if(i>2){
                    if(list.get(i-1) == 3 &&
                        list.get(i-2) == 2 &&
                        list.get(i-3) == 1){
                        list.remove(i);
                        list.remove(i-1);
                        list.remove(i-2);
                        list.remove(i-3);
                        
                        answer++;
                        
                        i-=4;
                        
                        continue;

                    }
                }
                
            }
            
            
        }

        
        
        
        
        return answer;
    }
}
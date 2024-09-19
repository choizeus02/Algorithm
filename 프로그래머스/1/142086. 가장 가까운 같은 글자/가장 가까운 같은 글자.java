

import java.util.HashMap;
class Solution {
    public int[] solution(String s) {
        int[] answer = new int[s.length()];
        
        HashMap<Character, Integer> map = new HashMap<>();
        
        char[] ch = s.toCharArray();
        
        for(int i=0; i<s.length(); i++){
            if(!map.containsKey(ch[i])){
                map.put(ch[i],i);
                answer[i] = -1;
            } else {
                answer[i] = i - map.get(ch[i]);
                map.put(ch[i],i);
            }
        }
        
        return answer;
    }
}
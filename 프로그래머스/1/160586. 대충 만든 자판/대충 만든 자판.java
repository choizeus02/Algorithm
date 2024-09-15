import java.util.HashMap;

class Solution {
    public int[] solution(String[] keymap, String[] targets) {
        
        HashMap<Character, Integer> map = new HashMap<>();

        
        for(int i=0;i<keymap.length;i++){
            char[] keys = keymap[i].toCharArray();
            for(int j=0; j< keys.length; j++){
                map.put(keys[j], Math.min(map.getOrDefault(keys[j], j+1), j+1));
            }
        }
        
        int[] answer = new int[targets.length];

        
        for(int i=0;i<targets.length;i++){
            char[] key2 = targets[i].toCharArray();
            int sum =0;
            boolean isValid = true;
            
            for(int j=0;j<key2.length;j++){
                if(map.containsKey(key2[j])){
                    sum += map.get(key2[j]);

                } else {
                    isValid = false;
                    break;
                }
                
            }
            answer[i] = isValid ? sum : -1;

        }
        

        
        return answer;
    }
}
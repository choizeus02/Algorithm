
import java.util.HashSet;

class Solution {
    public int solution(String[] babbling) {

        HashSet<String> validSounds = new HashSet<>();
        validSounds.add("aya");
        validSounds.add("ye");
        validSounds.add("woo");
        validSounds.add("ma");
        
        int answer = 0;
        
        for (String word : babbling) {
            String prevSound = "";
            boolean valid = true; 
            
            int i = 0;
            while (i < word.length()) {
                boolean found = false; 
                
         
                for (String sound : validSounds) {
                   
                    if (word.startsWith(sound, i)) {
                       
                        if (prevSound.equals(sound)) {
                            valid = false;
                            break;
                        }
                        prevSound = sound; 
                        found = true; 
                        i += sound.length(); 
                        break;
                    }
                }
                
                
                if (!found) {
                    valid = false;
                    break;
                }
            }
            
            
            if (valid) {
                answer++;
            }
        }
        
        return answer; 
    }
}
class Solution {
    public String solution(String s, String skip, int index) {
        
        String answer = "";
        
        
        for(int i =0; i<s.length();i++){
            
            char ch = s.charAt(i);
            int end = 0;
            
            while(end < index) {
                ch = (char) ((ch - 97 + 1) % 26 + 97);
                if(!skip.contains(String.valueOf(ch)))
                    end++;
            }
            answer += ch;
        }
        
        
        return answer;
    }
}
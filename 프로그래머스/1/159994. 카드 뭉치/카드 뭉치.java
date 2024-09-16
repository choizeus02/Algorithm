import java.util.Stack;

class Solution {
    public String solution(String[] cards1, String[] cards2, String[] goal) {
        
        Stack<String> st = new Stack<>();
        
        for(int i=goal.length -1; i >=0 ; i--){
            st.push(goal[i]);
        }
        int s1=0;
        int s2=0;
        
        while(!st.isEmpty()) {
            
            String temp = st.pop();
            
            if(s1 < cards1.length && temp.equals(cards1[s1])){
                s1++;
            } else if(s2 < cards2.length && temp.equals(cards2[s2])){
                s2++;
            } else {
                return "No";
            }
            
        }
        
        return "Yes";
    }
}
class Solution {
    public int solution(String t, String p) {
        
        int index = p.length();
        long numP = Long.parseLong(p);
        int answer = 0;
        for(int i=0;i<t.length() - (index-1); i++){
            long numT = Long.parseLong(t.substring(i, i + index));
            if (numT <= numP) {
                answer++;
            }
        }
        
        return answer;
    }
}
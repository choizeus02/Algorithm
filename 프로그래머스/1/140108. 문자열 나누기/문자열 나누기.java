class Solution {
    public int solution(String s) {
        int answer = 0;
        int index = 0;
        int length = s.length();

        while (index < length) {
            char currentChar = s.charAt(index);
            int x = 1;
            int y = 0; 
            int i = index + 1;

           
            while (i < length) {
                if (s.charAt(i) == currentChar) {
                    x++; 
                } else {
                    y++; 
                }

            
                if (x == y) {
                    break;
                }

                i++;
            }

            index = i + 1;
            answer++;
        }

        return answer;
    }
}

import java.util.*;

class Solution {
    public int[] solution(String[] wallpaper) {
        
        int minX = Integer.MAX_VALUE;
        int minY = Integer.MAX_VALUE;
        int maxX = Integer.MIN_VALUE;
        int maxY = Integer.MIN_VALUE;
        
        for(int i=0;i<wallpaper.length;i++){
            char[] arr= wallpaper[i].toCharArray();
            
            for(int j=0;j<arr.length;j++){
                if (arr[j] == '#') {
                    minX = Math.min(minX,i);
                    minY = Math.min(minY,j);
                    maxX = Math.max(maxX,i);
                    maxY = Math.max(maxY,j);
                }
                
                
            }
        }
        
        int[] answer = {minX, minY, maxX + 1, maxY + 1};
        return answer;
    }
}
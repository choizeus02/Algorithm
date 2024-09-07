import java.util.HashMap;

class Solution {
    public String[] solution(String[] players, String[] callings) {
        
        String[] answer = {};
        
        HashMap<String, Integer> map = new HashMap<>();
        
        for(int i=0; i<players.length;i++){
            map.put(players[i],i);
        }
        
        for(String s : callings){
            
            int pass = map.get(s);
            String player1 = players[pass];
            String player2 = players[pass-1];
            players[pass-1] = player1;
            players[pass] = player2;
            
            map.put(player1,pass-1);
            map.put(player2,pass);
            
            
        }
        
        return players;
    }
}
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException{
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int T = Integer.parseInt(br.readLine());

        for(int i=0;i<T;i++){
            int N = Integer.parseInt(br.readLine());
            int num1 = 0, num2 = 1;

            for(int j=0;j<N; j++){
                if(j%2 == 0) num2 += num1;
                else num1 += num2;
            }

            if(N==0) System.out.println(1 + " "+ 0);
            else if (N%2==0) System.out.println(num2 + " " + num1);
            else System.out.println(num1 + " " + num2);

        }
    }
}

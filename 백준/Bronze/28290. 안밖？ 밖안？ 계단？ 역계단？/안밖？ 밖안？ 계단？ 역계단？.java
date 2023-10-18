import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String str = br.readLine();

        switch (str) {
            case "fdsajkl;":
            case "jkl;fdsa":
                System.out.println("in-out");
                break;
            case "asdf;lkj":
            case ";lkjasdf":
                System.out.println("out-in");
                break;
            case "asdfjkl;":
                System.out.println("stairs");
                break;
            case ";lkjfdsa":
                System.out.println("reverse");
                break;                
            default:
                System.out.println("molu");
                break;

        }
    }
}

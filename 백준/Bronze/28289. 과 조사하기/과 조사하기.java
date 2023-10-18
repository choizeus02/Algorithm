import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class Main {

    public static void main(String[] args )throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st;

        int[] arr = new int[3];

        int so = 0;
        int em = 0;
        int ai = 0;
        int ex = 0;

        try {
            int num = Integer.parseInt(br.readLine());

            for(int i = 0; i < num; i++) {
                st = new StringTokenizer(br.readLine());
                int grade = Integer.parseInt(st.nextToken());
                int classN = Integer.parseInt(st.nextToken());
                int number = Integer.parseInt(st.nextToken());


                switch (grade) {
                    case 1:
                        ex++;
                        break;
                    case 2:
                    case 3:
                        switch (classN) {
                            case 1:
                            case 2:
                                so++;
                                break;
                            case 3:
                                em++;
                                break;
                            case 4:
                                ai++;
                                break;
                        }
                }
            }

            System.out.println(so);
            System.out.println(em);
            System.out.println(ai);
            System.out.println(ex);

        } catch (IOException e) {
            System.err.println("입력 오류: " + e.getMessage());
        } catch (NumberFormatException e) {
            System.err.println("숫자 변환 오류: " + e.getMessage());
        }
    }
}

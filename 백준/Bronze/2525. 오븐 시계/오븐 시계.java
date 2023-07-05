import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        int num,num2,num3;
        boolean tag = false;
        do {
            num = sc.nextInt();
            num2 = sc.nextInt();
            num3 = sc.nextInt();
        } while (!(0 <= num && num <= 23) && (0 <= num2 && num2 <= 59) && (0 <= num && num <= 1000));  // 지정된 범위 외의 값 거부


        if (num2 + num3 >= 60) {
            if(num != 23){
                num++;
            }else {
                num = 0;
            }
            num3 = num3 - (60 - num2);
            num2 = 0; // 18 0 60
        }else if (num2+num3 < 60){
            num2 = num2+num3;
            tag = true;
        }
        else if (num3 < 60){
            num2 = num3;
        }
        if(num3 >= 60) {
            //num = num+num3/60;
            if (num+num3/60 >= 24)
                num = (num+num3/60) - 24;
            else
                num = num+num3/60;
            num2 = num2+num3%60;
        } else if(tag == false) {
            num2 = num3;
        }

        System.out.printf("%d %d",num,num2);
    }
}


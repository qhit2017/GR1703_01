import java.util.Scanner;


public class T4 {
	//从键盘接收一个3位数，求这个三位数的10位是几？
	public static void main(String[] args) {
		Scanner sc =new Scanner(System.in);
		int i=sc.nextInt();
		int shi;
		shi=i/10%10;
		System.out.println(shi);
		
	}

}

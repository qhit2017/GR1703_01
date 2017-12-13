

public class Work2 {
	//从键盘接收一个3位数，求这个三位数的10位是几？
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int t=sc.nextInt();
		int shi =(t/10)%10;
		System.out.println(shi);
	}

}

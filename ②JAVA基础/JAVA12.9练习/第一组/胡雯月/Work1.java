

public class Work1 {
	//从键盘接收两个数，输出较大的那个数
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int a=sc.nextInt();
		int b=sc.nextInt();
		if(a<b){
			a=b;
		}System.out.println(a);
	}

}

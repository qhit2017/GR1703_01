import java.util.Scanner;


public class l5 {
	//从键盘输入10个数，输出后5个数
	public static void main(String[] args) {
		int []arr=new int[10];
		Scanner sc=new Scanner(System.in);
		for(int i=1;i<=arr.length;i++){
			System.out.println("输入第"+i+"个数：");
			arr[i-1]=sc.nextInt();
		}
		System.out.println("输出后五位数：");
		for(int i=arr.length-5;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
	}

}

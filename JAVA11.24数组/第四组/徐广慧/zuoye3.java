package zuoye26;

import java.util.Scanner;

public class zuoye3 {
//从键盘接收10个数，并存入数组中，然后循环遍历数组中的元素
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[] arr=new int[10];
		for(int a =1;a<=10;a++){
			System.out.println("请输入第"+a+"个数");
			arr[a-1]=sc.nextInt();
		}
		for(int a=0;a<arr.length;a++){
			System.out.print(arr[a]+"\t");
		}
		
		
		
	
	
	}
}

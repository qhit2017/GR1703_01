package Sunday;

import java.util.Scanner;

//3 从键盘接收10个数，并存入数组中，然后循环遍历数组中的元素
public class o3 {
public static void main(String[] args) {
	int []arr=new int[10]; 
	Scanner sc=new Scanner(System.in);
	for(int a=1;a<=arr.length;a++){
		System.out.println("输入第"+a+"个数:");
		arr[a-1]= sc.nextInt();
	
	}
	for(int i=0;i<arr.length;i++){
		System.out.println(arr[i]);
	}

	
}
}
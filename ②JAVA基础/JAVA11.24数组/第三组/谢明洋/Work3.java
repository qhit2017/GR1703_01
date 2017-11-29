package Work;

import java.util.Scanner;

public class Work3 {
	public static void main(String[] args) {
		
		//3 从键盘接收10个数，并存入数组中，然后循环遍历数组中的元素
		
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入十个数：");		
		int[] arr=new int[10];
		int i=0;
		
		while(i<arr.length){
			arr[i]=sc.nextInt();
			i++;
		}
		for(int j=0;j<arr.length;j++){
			System.out.print(arr[j]+" ");
		}
		
		
	}

}

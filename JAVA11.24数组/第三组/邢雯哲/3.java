package zuoye1;

import java.util.Scanner;

public class z3 {

	/*
	 * 从键盘接收10个数，并存入数据中，然后循环遍历数组中所有元素
	 */
      static void main(String[] args) {
		Scanner s=new Scanner(System.in);
		int []arr=new int[10];
		for(int i=0;i<arr.length;i++){
			System.out.println("请输入第"+(i+1)+"个数");
			arr[i]=s.nextInt();
		}
		for(int a=0;a<arr.length;a++){
			System.out.println(arr[a]);
		}
		
	}
}

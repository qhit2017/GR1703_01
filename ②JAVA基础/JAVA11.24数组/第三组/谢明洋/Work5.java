package Work;

import java.util.Scanner;

public class Work5 {
	public static void main(String[] args) {
		//5 从键盘输入10个数，输出后5个数
		
		Scanner sc=new Scanner(System.in);
		int[] arr=new int[10];
				
		for(int i=0;i<arr.length;i++){
			System.out.println("请输入第"+(i+1)+"数");
			arr[i]=sc.nextInt();
			}
		for(int i=0;i<arr.length;i++){
			if(i>=4){
				System.out.print(arr[i]+" ");
			}
		}
		}
		
	}



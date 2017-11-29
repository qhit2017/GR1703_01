import java.util.Scanner;


public class Zy5 {
	//5 从键盘输入10个数，输出后5个数
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[]arr=new int[10];
		for(int a=0;a<10;a++){
		System.out.println("输出十个数");
		  arr[a]=sc.nextInt();
		}
		System.out.println("输出后5位");
		  
		  for(int b=5;b<arr.length;b++){
			  System.out.print(arr[b]+"\t");
		  }
		
		
		
		
		
	}

	}

import java.util.Scanner;


public class Zy7 {
	//7 从键盘输入10个数，将第2个与第6个交换，第4个与第8个交换，输出原来的10个数，以及交换后的10个数
    public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[]arr=new int[10];
		for(int a=0;a<10;a++){
			System.out.println("请输出十个数");
			arr[a]=sc.nextInt();
			
		}
		System.out.println("输出原来的十位数");
		for(int b=0;b<arr.length;b++){
			System.out.print(arr[b]+"\t");
		}
		System.out.println();
		System.out.println("交换后的十位数");
		  int w=arr[1];
		  arr[1]=arr[5];
		  arr[5]=w;
		  int d=arr[3];
		  arr[3]=arr[7];
		  arr[7]=d;
		  for(int c=0;c<arr.length;c++){
		  System.out.print(arr[c]+"\t");
    	
    	
    	
    	
    	
    	
    	
		}	
	}
    }

package zuoye26;

import java.util.Scanner;

public class zuoye6 {
//从键盘输入10个数，并从大到小排序
	public static void main(String[] args) {
		Scanner sc= new Scanner(System.in);
		int[] arr=new int[10];						//输入
		for(int a =0;a<arr.length;a++){
			System.out.print("请输入第"+(a+1)+"个数"+"\t");
			arr[a]=sc.nextInt();
		}
		for(int b=0;b<arr.length-1;b++){
			for(int c=b+1;c<arr.length;c++){
				if(arr[b]<arr[c]){
				int e=arr[b];
				arr[b]=arr[c];
				arr[c]=e;}
				
				
			}
		}
	
		
			for(int d=0;d<arr.length;d++){
				System.out.print(arr[d]+"\t");
			
			
		}
		
		
		
	
}
}
package zuoye1;

import java.util.Scanner;

public class z6 {

	/*
	 * 从键盘输入10个数，并从大到小排序
	 */
	public static void main(String[] args) {
		Scanner n=new Scanner(System.in);
		int []arr=new int[10];
		for(int i=0;i<arr.length;i++){
			System.out.println("请输入第"+(i+1)+"个数");
			arr[i]=n.nextInt();
		}
		for(int a=0;a<arr.length-1;a++){
			for(int b=a+1;b<arr.length;b++){
				if(arr[a]<arr [b]){
					int t=arr[a];
					arr[a]=arr[b];
					arr[b]=t;
					
				}
				
			}
		}
		for(int c=0;c<arr.length;c++){
			System.out.println(arr[c]);
			
		}
		
		
		
		
		
	}
}

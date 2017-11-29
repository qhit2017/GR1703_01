package zuoye26;

import java.util.Scanner;

public class l6 {
	public static void main(String[] args) {
		int[]arr=new int[10];
		Scanner sc=new Scanner(System.in);
		for(int i=1;i<=arr.length;i++){
			System.out.println("输入第"+i+"个数：");
			arr[i-1]=sc.nextInt();
		}
		
		for(int i=0;i<arr.length-1;i++){
			for(int j=i+1;j<arr.length;j++){
				if(arr[i]<arr[j]){
					int t=arr[i];
					arr[i]=arr[j];
					arr[j]=t;
				}
			}
		}
		
		for(int i=0;i<arr.length;i++){
			System.out.println(arr[i]);
		}
	}
}

package Work;

import java.util.Scanner;

public class Work6 {
	public static void main(String[] args) {
		//6 �Ӽ�������10���������Ӵ�С����
		
		Scanner sc=new Scanner(System.in);
		int[] arr=new int[10];
		
		System.out.println("������ʮ�������дӴ�С����");
		for(int i=0;i<arr.length;i++){
			arr[i]=sc.nextInt();
		}		
		for(int i=0;i<arr.length;i++){			
			for(int j=i+1;j<arr.length;j++){
				if(arr[i]<arr[j]){
					int t=arr[i];
					arr[i]=arr[j];
					arr[j]=t;
				}				
			}
		}
		for(int i=0;i<arr.length;i++){
			System.out.println(arr[i]+" ");
		}
		
		
	}

}

package Work;

import java.util.Scanner;

public class Work5 {
	public static void main(String[] args) {
		//5 �Ӽ�������10�����������5����
		
		Scanner sc=new Scanner(System.in);
		int[] arr=new int[10];
				
		for(int i=0;i<arr.length;i++){
			System.out.println("�������"+(i+1)+"��");
			arr[i]=sc.nextInt();
			}
		for(int i=0;i<arr.length;i++){
			if(i>=4){
				System.out.print(arr[i]+" ");
			}
		}
		}
		
	}



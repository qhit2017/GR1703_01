package Work;

import java.util.Scanner;

public class Work3 {
	public static void main(String[] args) {
		
		//3 �Ӽ��̽���10�����������������У�Ȼ��ѭ�����������е�Ԫ��
		
		Scanner sc=new Scanner(System.in);
		System.out.println("������ʮ������");		
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

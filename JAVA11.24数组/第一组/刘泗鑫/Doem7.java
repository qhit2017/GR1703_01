import java.util.Scanner;


public class Doem7 {
	
	/*
	 * 7 �Ӽ�������10����������2�����6����������4�����8�����������ԭ����10�������Լ��������10����
	 */

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int[] arr = new int[10];
		
		for(int a = 1;a<=arr.length;a++){
			System.out.println("�������"+a+"������");
			arr[a-1] = sc.nextInt();
		}
		
		System.out.println("ԭ�����ǣ�");
		for(int i = 0;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
		
		System.out.println();
		System.out.println("������������ǣ�");
		for(int j = 0;j<arr.length-1;j++){
			for(int b=j+1;b<arr.length;b++){
				if(arr[j]!=arr[b]){
					int t =arr[1];
					arr[1]=arr[5];
					arr[5]=t;
					int n = arr[3];
					arr[3]=arr[7];
					arr[7]=n;
					
				}
				
			}
		}
		for(int c = 0;c<arr.length;c++){
			System.out.print(arr[c]+"\t");
			
		}
		
	}
	
}

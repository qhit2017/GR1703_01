import java.util.Scanner;


public class Work3 {

	public static void main(String[] args) {
		//3 �Ӽ��̽���10�����������������У�Ȼ��ѭ�����������е�Ԫ��
		Scanner sc = new Scanner(System.in);
		int[] arr = new int[10];
		for(int i=0; i<arr.length; i++){
			System.out.println("�������"+(i+1)+"����");
			arr[i] = sc.nextInt();
		}
		for(int i=0; i<arr.length; i++){
			System.out.print(arr[i]);
		}
		
		
		
	}
}

import java.util.Scanner;


public class l3 {
	//�Ӽ��̽���10�����������������У�Ȼ��ѭ�����������е�Ԫ��
	public static void main(String[] args) {
		int []arr=new int[10];
		Scanner sc=new Scanner(System.in);
		for(int i=1;i<=arr.length;i++){
			System.out.println("�������"+i+"������");
			arr[i-1]=sc.nextInt();
		}
		for(int i=0;i<arr.length;i++){
			System.out.println("arr["+i+"]="+arr[i]);
		}
	
	}

}

import java.util.Scanner;


public class l5 {
	//�Ӽ�������10�����������5����
	public static void main(String[] args) {
		int []arr=new int[10];
		Scanner sc=new Scanner(System.in);
		for(int i=1;i<=arr.length;i++){
			System.out.println("�����"+i+"������");
			arr[i-1]=sc.nextInt();
		}
		System.out.println("�������λ����");
		for(int i=arr.length-5;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
	}

}

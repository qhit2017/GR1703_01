import java.util.Scanner;


public class T5 {
	//�Ӽ��̽���һ�����֣���������ַ�ת���
	public static void main(String[] args) {
		Scanner sc =new Scanner(System.in);
		int i =sc.nextInt();
		while(i>=10){
			int a=i%10;
			i=i/10;
			
			
			System.out.println(a);
		}
		System.out.println(i);
		
		
	}

}

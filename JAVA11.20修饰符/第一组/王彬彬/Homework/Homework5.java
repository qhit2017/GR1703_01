package Homework;
/*
 * 5 ��for �� while���ַ�������1~100֮�������ĺ�
 */
public class Homework5 {
//1
	public static void main(String[] args) {
		int sum=0;
		for(int a = 1; a<=100; a=a+2){
			sum=sum+a;
		}
		System.out.println(sum);
		
		
//2		
		int sum2=0;
		int b=1;
		while(b<=100){
			sum2=sum2+b;
			b=b+2;
		}
		System.out.println(sum2);
		}
	
	
	
}

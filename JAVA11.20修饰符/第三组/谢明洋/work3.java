package comtsinghua;

import java.util.Scanner;

public class work3 {
	public static void main(String[] args) {
		
		/*
		 * 3����������С��x,y,z��������������ɴ�С�����
		 */
		
		Scanner sc=new Scanner(System.in);
		System.out.println("�������һ��С����");
		double a=sc.nextDouble();
		System.out.println("������ڶ���С����");
		double b=sc.nextDouble();
		System.out.println("�����������С����");
		double c=sc.nextDouble();
		double max1=0;
		double max=0;
		double min=0;
		
		if(a>b){
			max=a;
			if(max>c){
				max=max;			
				if(c>b){
					max1=c;
					min=b;
				}else{
					max1=b;
					min=c;
				}
			}else{
				max=c;
				max1=a;
				min=b;
			}
		}else {
			max=b;
			if(max>c){
				max=max;
				if(a>c){
					max1=a;
					min=c;								
				}else{
					max1=c;
					min=a;
				}
			}else{
				max=c;
				max1=b;
				min=a;
			}
			
		}			
	System.out.println(max+">"+max1+">"+min);
		
	}

}

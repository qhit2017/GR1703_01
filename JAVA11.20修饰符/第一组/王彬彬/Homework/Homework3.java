package Homework;

import java.util.Scanner;

/*
 * ��������С��x,y,z��������������ɴ�С���
 */
public class Homework3 {

	public static void main(String[] args) {
		
		Scanner sc= new Scanner(System.in);
		System.out.println("�������һ��С��");
		double x = sc.nextDouble();
		
		System.out.println("������ڶ���С��");
		double y = sc.nextDouble();
		
		System.out.println("�����������С��");
		double z = sc.nextDouble();
		
		double q=x>y?x:y; 		 double e=x<y?x:y;
		double w=q>z?q:z;   	 double t=e<z?e:z;
		double p;
		if(q<=z){
			p=q;
		}else{
			if(z<e){
				p=e;
			}else{
				p=z;
			}
		}
		System.out.println(w+">="+p+">="+t);
		
	}
	
	
}

package Homework;

import java.util.Scanner;

/*
 * 输入三个小数x,y,z，请把这三个数由大到小输出
 */
public class Homework3 {

	public static void main(String[] args) {
		
		Scanner sc= new Scanner(System.in);
		System.out.println("请输入第一个小数");
		double x = sc.nextDouble();
		
		System.out.println("请输入第二个小数");
		double y = sc.nextDouble();
		
		System.out.println("请输入第三个小数");
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

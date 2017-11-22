import java.util.Scanner;


public class l3 {
	//输入三个小数x,y,z，请把这三个数由大到小输出。
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("输入第一个数：");
		double x=sc.nextDouble();
		System.out.println("输入第二个数：");
		double y=sc.nextDouble();
		System.out.println("输入第三个数：");
		double z=sc.nextDouble();
		if(x>=y&&y>=z){
			System.out.println(x+","+y+","+z);
		}else if(x>=z&&z>=y){
			System.out.println(x+","+z+","+y);
		}else if(y>=x&&x>=z){
			System.out.println(y+","+x+","+z);
		}else if(y>=z&&z>=x){
			System.out.println(y+","+z+","+x);
		}else if(z>=x&&x>=y){
			System.out.println(z+","+x+","+y);
		}else{
			System.out.println(z+","+y+","+x);
		}
	}

}

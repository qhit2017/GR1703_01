import java.util.Scanner;



public class A03 {
/*
 * 输入三个小数x,y,z，请把这三个数由大到小输出。
 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入第一个小数:");
		double x = sc.nextDouble();
		System.out.println("请输入第二个小数:");
		double y = sc.nextDouble();
		System.out.println("请输入第三个小数:");
		double z = sc.nextDouble();
		double v;
		if(z>y){
			v=z;
			z=y;
			y=v;
		}
		if(z>x){
			v=x;
			x=z;
			z=v;
		}
		if(y>x){
			v=y;
			y=x;
			x=v;
		}
		System.out.println(x+","+y+","+z);
	}
}

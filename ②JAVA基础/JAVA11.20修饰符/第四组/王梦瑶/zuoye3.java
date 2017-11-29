import java.util.Scanner;


public class zuoye3 {
	/*3、输入三个小数x,y,z，请把这三个数由大到小输出。
	 * 
	 */
	public static void main(String[] args) {
		Scanner sc =new Scanner(System.in);
		System.out.println("请输入三个小数");
		double x=sc.nextDouble();
		double y=sc.nextDouble();
		double z=sc.nextDouble();
		if(x>y&&y>z){
			System.out.println(x+">"+y+">"+z);
		}else if(x>z&&z>y){
			System.out.println(x+">"+z+">"+y);
			
		}else if(y>x&&x>z){
			System.out.println(y+">"+x+">"+z);
			
		}else if(y>z&&z>x){
			
			System.out.println(y+">"+z+">"+x);
		}else if(z>y&&y>x){
			System.out.println(z+">"+y+">"+x);
			
		}else if(z>x&&x>y){
			System.out.println(z+">"+x+">"+y);
			
		}else if(x==y&&y>z){
			System.out.println(x+"="+y+">"+z);
			
		}else if(x==z&&z>y){
			System.out.println(x+"="+z+">"+y);
			
		}else if(y==z&&z>x){
			System.out.println(y+"="+z+">"+x);
			
		}else if(x==z&&z==y){
			System.out.println(x+"="+z+"="+y);
			
		}
	}
}

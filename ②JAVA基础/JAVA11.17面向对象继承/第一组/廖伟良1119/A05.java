import java.util.Scanner;


public class A05 {
	/*模拟实现计算器的功能
	 *要求从键盘输入第一个数
	 * 输入操作符
	 * 输入第二个数
	 * 然后输出结果
	 * 比如先输入7，然后输入+，最后输入8回车之后输出：7+8=15
	 * 比如先输入9，然后输入/，最后输入2回车之后输出:9/2=4	
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入第一个数:");
		int a1 = sc.nextInt();
		String str =null;
		System.out.println("输入操作符:");
		str = sc.next();
		System.out.println("请输入第二个数:");
		int a2 = sc.nextInt();
		System.out.println(a1+str+a2+"="+(a1+a2));
	}
}

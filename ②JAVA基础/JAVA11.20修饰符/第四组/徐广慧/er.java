import java.util.Scanner;

public class l4 {
	//从键盘输入1~7的数字，如果数字是1，则输出星期一，如果数字是2，
	//则输出星期二........如果数字是7,则输出星期日(用switch)
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入一个1~7的数字：");
		int n=sc.nextInt();
		switch(n){
		case 1 :System.out.println("星期一");break;
		case 2 :System.out.println("星期二");break;
		case 3 :System.out.println("星期三");break;
		case 4 :System.out.println("星期四");break;
		case 5 :System.out.println("星期五");break;
		case 6 :System.out.println("星期六");break;
		case 7 :System.out.println("星期日");break;
		default:System.out.println("您输入的数字不规范！"); 
		}
	}

}

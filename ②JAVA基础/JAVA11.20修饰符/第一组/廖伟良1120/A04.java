import java.util.Scanner;
/*
 * 从键盘输入1~7的数字，如果数字是1，则输出星期一，如果数字是2，则输出星期二........如果数字是7,则输出星期日(用switch)
 */

public class A04 {
	public static void main(String[] args) {
		Scanner sc =new Scanner(System.in);
		System.out.println("请输入1-7的数字:");
		int week =sc.nextInt();
		String strWeek;
		switch(week){
		case 1:
			strWeek = "星期一";
			break;
		case 2:
			strWeek = "星期二";
			break;
		case 3:
			strWeek = "星期三";
			break;
		case 4:
			strWeek = "星期四";
			break;
		case 5:
			strWeek = "星期五";
			break;
		case 6:
			strWeek = "星期六";
			break;
		case 7:
			strWeek = "星期日";
			break;
		default:
			strWeek = "您输入有误";
			break;
		}
		System.out.println(strWeek);
	}
}

import java.util.Scanner;
/*
 * �Ӽ�������1~7�����֣����������1�����������һ�����������2����������ڶ�........���������7,�����������(��switch)
 */

public class A04 {
	public static void main(String[] args) {
		Scanner sc =new Scanner(System.in);
		System.out.println("������1-7������:");
		int week =sc.nextInt();
		String strWeek;
		switch(week){
		case 1:
			strWeek = "����һ";
			break;
		case 2:
			strWeek = "���ڶ�";
			break;
		case 3:
			strWeek = "������";
			break;
		case 4:
			strWeek = "������";
			break;
		case 5:
			strWeek = "������";
			break;
		case 6:
			strWeek = "������";
			break;
		case 7:
			strWeek = "������";
			break;
		default:
			strWeek = "����������";
			break;
		}
		System.out.println(strWeek);
	}
}

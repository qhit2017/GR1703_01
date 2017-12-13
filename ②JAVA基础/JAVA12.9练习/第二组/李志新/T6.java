import java.util.Scanner;


public class T6 {
	//从键盘接收一个字符串，将该字符串反转输出
	public static void main(String[] args) {
		Scanner sc =new Scanner(System.in);
		String str=sc.next(); 
		for(int i=str.length()-1;i>=0;i--){
			System.out.print(str.charAt(i));
		}
		
	}

}

package homework;

import java.util.Scanner;

public class Work2 {
	public static void main(String[] args) {
		//2 从键盘接收一个字符串，输出字符串里的大写字母数，小写英文字母数，非英文字母数
		
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入一个字符串：");
		String s=sc.next();
		
		int x=0;
		int y=0;
		
		
		for(int i=0;i<s.length();i++){
			
			char a=s.charAt(i);
			if(s.charAt(i)>='a'&&s.charAt(i) <='z'){	
				x++;
			}else if(s.charAt(i)>='A'&&s.charAt(i) <='Z'){
				y++;
			}

		} 
		System.out.println("大写字母数："+x);
		System.out.println("小写字母数："+y);
		int z=s.length()-x-y;
		System.out.println("非英文字母数："+z);
	}		
}

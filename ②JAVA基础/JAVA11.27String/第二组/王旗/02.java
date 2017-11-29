package HomeWork1127;

import java.util.Scanner;

//从键盘接收一个字符串，输出字符串里的大写字母数，小写英文字母数，非英文字母数
public class HomeWork02 {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入一个字符串：");
		String str = sc.next();
		//大写字母
		for(int i=0;i<str.length();i++){
			 char  a=str.charAt(i);
			 String b= str.toUpperCase();
			          
			if(a>='a'&&a<='z'){
			}
			System.out.print("您输入的字符串小写字母共有："+a+"\t");
				System.out.println();
			if(a>='A'&&a<='Z'){
				System.out.print("您输入的字符串大写字母共有："+a+"\t");
			}
				System.out.println();
			if(a<='9'){
				System.out.print("您输入的数字共有："+a+"\t");
				
			}
		}
				
		
		
		
		}
	}



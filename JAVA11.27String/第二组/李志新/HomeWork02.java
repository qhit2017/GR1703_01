package HomeWork1127;

import java.util.Scanner;

//�Ӽ��̽���һ���ַ���������ַ�����Ĵ�д��ĸ����СдӢ����ĸ������Ӣ����ĸ��
public class HomeWork02 {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("������һ���ַ�����");
		String str = sc.next();
		//��д��ĸ
		for(int i=0;i<str.length();i++){
			 char  a=str.charAt(i);
			 String b= str.toUpperCase();
			          
			if(a>='a'&&a<='z'){
			}
			System.out.print("��������ַ���Сд��ĸ���У�"+a+"\t");
				System.out.println();
			if(a>='A'&&a<='Z'){
				System.out.print("��������ַ�����д��ĸ���У�"+a+"\t");
			}
				System.out.println();
			if(a<='9'){
				System.out.print("����������ֹ��У�"+a+"\t");
				
			}
		}
				
		
		
		
		}
	}



package homework;

import java.util.Scanner;

public class Work2 {
	public static void main(String[] args) {
		//2 �Ӽ��̽���һ���ַ���������ַ�����Ĵ�д��ĸ����СдӢ����ĸ������Ӣ����ĸ��
		
		Scanner sc=new Scanner(System.in);
		System.out.println("������һ���ַ�����");
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
		System.out.println("��д��ĸ����"+x);
		System.out.println("Сд��ĸ����"+y);
		int z=s.length()-x-y;
		System.out.println("��Ӣ����ĸ����"+z);
	}		
}

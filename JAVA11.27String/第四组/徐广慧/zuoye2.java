package zuoye27;

import java.util.Scanner;

public class zuoye2 {

	//�Ӽ��̽���һ���ַ���������ַ�����Ĵ�д��ĸ����СдӢ����ĸ������Ӣ����ĸ��
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String a=sc.nextLine();
		String b="qazwsxedcrfvtgbyhnujmikolp";
		String c="QAZWSXEDCRFVGTBYHNMUJIKLOP";
		String d="1234567890";
		int x=0;
		int g=0;
		int h=0;
		for(int z=0;z<a.length();z++){
			if(b.indexOf(a.charAt(z))>=0){
				x++;
			}else if(c.indexOf(a.charAt(z))>=0){
				g++;
			}else if(d.indexOf(a.charAt(z))>=0){
				h++;
			}
		
		}
		System.out.println(x);
		System.out.println(g);
		System.out.println(h);
	}
}

package test2;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class serviceImpl implements serviceInterface{

	public void insert(Scanner sc, List<testinfor> list) {
		System.out.println("������ѧ����Ϣ��������ѧӢ��ɼ�����Ӣ�Ķ��Ÿ��������磺����,001,50,60,59");
		String str = sc.next();
		String arr[]=str.split(",");
		if(arr.length<5){
			System.out.println("�밴Ҫ������");
		}else{
			testinfor stu=new testinfor();
			stu.setName(arr[0]);
			int numbering = Integer.parseInt(arr[1]);
			int chinese = Integer.parseInt(arr[2]);
			int math = Integer.parseInt(arr[3]);
			int english = Integer.parseInt(arr[4]);
			stu.setNumbering(numbering);
			stu.setChinese(chinese);
			stu.setMath(math);
			stu.setEnglish(english);
			stu.setAll(chinese+math+english);
			list.add(stu);
			System.out.println("¼�����");
		}
	}
	
	public void searchall(Scanner sc, List<testinfor> list) {
		for(testinfor i :list){
			i.infor();
		}
	}

	public void maxsore(Scanner sc, List<testinfor> list,int max,int maxc,int maxm,int maxe) {
		while(true){
			System.out.println("������һ�����֣�1 ����ӡ�ܷ���߷�  2����ӡ������߷�  3:��ӡ��ѧ��߷�  4����ӡӢ����߷� 5���˳�");
			String str = sc.next();
		if(str.equals("1")){
			
			List<String> list2=new ArrayList<String>();
			for(testinfor i:list){
				if(i.getAll()==max){
					list2.add(i.getName());
				}
			}
		     System.out.println("�ܷ���߷���"+max+",��"+list2.size()+"λͬѧ");
		}else if(str.equals("2")){
			System.out.println(maxc);
		}else if(str.equals("3")){
			System.out.println(maxm);
		}else if(str.equals("4")){
			System.out.println(maxe);
		}else if(str.equals("5")){
			break;
		}else{
			System.out.println("�밴Ҫ������");
		}
		}
	}

}

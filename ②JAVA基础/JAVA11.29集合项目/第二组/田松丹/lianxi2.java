package t28;

import java.sql.Array;
import java.util.ArrayList;
import java.util.Scanner;

public class lianxi2 {
public static void main(String[] args) {
	ArrayList<lianxi1>list=new ArrayList<lianxi1>();
	Scanner sc=new Scanner(System.in);
	while(true){
	System.out.println("�����룺1����ѧ�� 2.��ѯ����ѧ�� 3.����������ѯѧ����Ϣ 4.ɾ��ѧ�� 5.�޸�ѧ����Ϣ 6.�˳�");
	int n=sc.nextInt();
	System.out.println("������");
	if(n==1){
		System.out.println("������ѧ����Ϣ��������   ��    18��  ��ַ�Ϻ�");
		lianxi1 a=new lianxi1();
		String lianxi1=sc.next();
		String[] arr = lianxi1.split(",");
		int age = Integer.parseInt(arr[2]);
		a.setName(arr[0]);
		a.setXb(arr[1].charAt(0));
		a.setAge(age);
		a.setDz(arr[3]);
		a.info();
		list.add(a);
		System.out.println("���ӳɹ�");
		System.out.println();
	}else if(n==2){
			System.out.println();
			System.out.println("��ѯ����ѧ��:");
			for(lianxi1 a : list){
				a.info();
				System.out.println();
			}
			System.out.println("������ѧ������");
			if(n==4){
			String lianxi1=sc.next();
			for(int i=0;i<list.size();i++){
			lianxi1 a =list.get(i);
	
			if(lianxi1.equals(a.getName())){
				list.remove(a);
			}
		
	
		
	}
}
}
}

package ��ҵ3;

import java.util.ArrayList;
import java.util.Scanner;

public class Demoismile implements DemoIdemo{
	
	

	@Override
	public void zhengjia(ArrayList<Demo>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������ѧ����Ϣ���磺������18��֣��");
		String str=sc.next();
		String []arr=str.split(",");
		Demo a=new Demo();
		a.setName(arr[0]);
		a.setAge(Integer.parseInt(arr[1]));
		a.setDizhi(arr[2]);
		a.info();
		list.add(a);
		System.out.println("��ӳɹ�");
	}

	@Override
	public void chaxun(ArrayList<Demo>list) {
		// TODO Auto-generated method stub
		for(Demo i:list){
			i.info();
	}

	}

	@Override
	public void shuchu(ArrayList<Demo>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������ѧ������");
		String name=sc.next();
		for(Demo s:list){
			if(name.equals(s.getName())){
				s.info();
				break;
			}
		}
	}
	@Override
	public void delete(ArrayList<Demo> list, Scanner sc) {
		// TODO Auto-generated method stub
		String name=sc.next();
		for(int i=0;i<list.size();i++){
			Demo s=new Demo();
			if(name.equals(s)){
				list.remove(s);
				break;
			}
		}
		System.out.println("ɾ���ɹ�");
	}

	@Override
	public void xiugai(ArrayList<Demo> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������ѧ�������Լ�����");
		String str=sc.next();
		String[]arr=str.split(",");
		String name=arr[0];
		int age=Integer.parseInt(arr[1]);
		for(Demo s:list){
			if(name.equals(s.getName())){
				s.getAge();
				System.out.println("�޸ĳɹ�");
				break;
			}
		}
	}
}
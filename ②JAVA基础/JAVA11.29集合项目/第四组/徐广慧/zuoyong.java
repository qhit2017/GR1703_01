package zuoye28;

import java.util.ArrayList;
import java.util.Scanner;

import org.omg.PortableServer.LifespanPolicyValue;

public class zuoyong  implements jiekou{

	@Override
	public void zengjia(ArrayList<Student> a,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("����ѧ��");
		String str=sc.next();
		String arr[]=str.split("��");
		Student b=new Student();
		b.setName(arr[0]);
		b.setAge(arr[1]);
		b.setSex(arr[2]);
		b.setAddress(arr[3]);
		a.add(b);
		System.out.println("��ӳɹ�");
	}

	@Override
	public void suoyou(ArrayList<Student> a) {
		// TODO Auto-generated method stub
		System.out.println("��ѯ����ѧ��");
		for(Student b: a){
			b.info();
		}
	}

	@Override
	public void chaxun(ArrayList<Student> a,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������������ѧ��");
		for(int i=0;i<a.size();i++){
			Student s=a.get(i);
			String d=sc.next();
			if(d.equals(s.getName())){
				s.info();
			}

	
	}}

	@Override
	public void shanchu(ArrayList<Student> a,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("ɾ��ѧ��");
		for(int i=0;i<a.size();i++){
			Student s=a.get(i);
			String d=sc.next();
			if(d.equals(s.getName())){
				a.remove(d);	
			}
		
		}
	}

	@Override
	public void xiugai(ArrayList<Student> a,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�޸�ѧ����Ϣ");
		String d=sc.next();
		String arr[]=d.split("��");
		for(int i=0;i<a.size();i++){
			Student s=a.get(i);
			if(arr[0].equals(s.getName())){
				s.setAge(arr[1]);
				s.setSex(arr[2]);
				s.setAddress(arr[3]);
			}
			
			System.out.println("�޸����");
		
		}
	}}

package com.kaoti1;

import java.util.List;
import java.util.Scanner;

public class StudentIserviceImpl implements StudentIservice{

	@Override
	public void tianjia(List<Student>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������߿���Ϣ����ʽ�� ��������ţ����ĳɼ�����ѧ�ɼ���Ӣ��ɼ������磺������12��110��100��95");
		Student s=new Student();
		String n= sc.next();
		String []arr=n.split("��");
		s.setName(arr[0]);
		s.setBianhao(arr[1]);
		s.setYuwen(Integer.parseInt(arr[2]));
		s.setMath(Integer.parseInt(arr[3]));
		s.setEnglish(Integer.parseInt(arr[4]));
		s.setTotal(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
		list.add(s);
		System.out.println("��ӳɹ���");
	}

	@Override
	public void findall(List<Student>list,Scanner sc) {
		// TODO Auto-generated method stub
		for(Student s:list){
			s.info();
		}
	}
	@Override
	public void findmax(List<Student>list,Scanner sc) {
		// TODO Auto-generated method stub
		Student s=new Student(); 
		while(true){
			System.out.println("1��ӡ�ܷ���߷�2	��ӡ��ѧ��߷�3��ӡ������߷�4��ӡӢ����߷�5�˳�");
			int n=sc.nextInt();
			if(n==1){
				int max=list.get(0).getTotal();
				for(int i=1;i<list.size();i++){
					if(max<list.get(i).getTotal()){
						max=list.get(i).getTotal();
					}
				}
				System.out.println("�ܷ���߷�:"+max);		
			}else if(n==2){
				int max=list.get(0).getMath();
				for(int i=1;i<list.size();i++){
					if(max<list.get(i).getMath()){
						max=list.get(i).getMath();
					}
				}
				System.out.println("��ѧ��߷�:"+max);
			}else if(n==3){
				int max=list.get(0).getYuwen();
				for(int i=1;i<list.size();i++){
					if(max<list.get(i).getYuwen()){
						max=list.get(i).getYuwen();
					}
				}
				System.out.println("������߷�:"+max);
			}else if(n==4){
				int max=list.get(0).getEnglish();
				for(int i=1;i<list.size();i++){
					if(max<list.get(i).getEnglish()){
						max=list.get(i).getEnglish();
					}
				}
				System.out.println("Ӣ����߷�:"+max);
			}else if(n==5){
				System.out.println("������һ�㣡");
				break;
			}else{
				System.out.println("�밴��ʾ����!");
			}
			
		}
	}

}

package ������ϰ;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Work1 {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		
		List<Student> list=new ArrayList<Student>();
		StudentInface service=new StudentService(); 
	while(true){	
		System.out.println("���������ֽ������²�����1 ����ѧ�� 2 ��ѯ����ѧ�� 3 ����������ѯѧ����Ϣ 4 ɾ��ѧ�� 5 �޸�ѧ����Ϣ 6 �˳�");
		int n=sc.nextInt();
		if(n==1){
			service.insert(list, sc);
		}else	if(n==2){
			service.findAll(list);			
			
		}else	if(n==3){
			service.findByname(list, sc);
		}else	if(n==4){
			service.delete(list, sc);		
		}else	if(n==5){
			service.update(list, sc);		
		}else	if(n==6){
			System.out.println("�˳�");
			break;
		}else{
			System.out.println("����������ֲ��ڲ�����Χ��");			
		}
		
	}
	}
}

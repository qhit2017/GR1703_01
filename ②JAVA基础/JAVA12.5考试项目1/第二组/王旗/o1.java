package ��ҵ1;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class o1 {

	public static void main(String[] args) {
		List<student>list=new ArrayList<student>();
		Scanner sc=new Scanner(System.in);
		while(true){
		System.out.println("1¼�뿼������Ϣ2��ѯ��������Ϣ3��ѯ��߷�4�˳�����");
		int a=sc.nextInt();
		
		if(a==1){
		System.out.println("1¼�뿼����Ϣ�磺������123,111,111,111");	
		student i=new student();
		String str=sc.next();
		String[]arr=str.split(",");
		i.setName(arr[0]);
		i.setBianhao(arr[1]);
		i.setYu(Integer.parseInt(arr[2]));
		i.setShu(Integer.parseInt(arr[3]));		
		i.setYing(Integer.parseInt(arr[4]));
		i.setZhongfen((Integer.parseInt(arr[2])+(Integer.parseInt(arr[3])+(Integer.parseInt(arr[4])))));
		list.add(i);
				
		System.out.println("��ӳɹ�");
		
		}else if(a==2){
			System.out.println("��ѯ������Ϣ");
			for(student q:list){
				q.inof();
			}
		}else if(a==3){
			System.out.println("��ѯ��߷�");
			int i=sc.nextInt();
			int max=0;
			for(student q:list){
				if(max<q.getZhongfen());
				max=q.getZhongfen();
			}
			System.out.println("��߷�"+max);
			
		}else if(a==4){
			System.out.println("4�˳�");
			break;
		}else{
			System.out.println("�������");
		} 
	}
	}
	}

package com.z;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.security.sasl.SaslClient;

public class Xiangm {
public static void main(String[] args) {
	//1��¼�뿼����Ϣ��Ϣ������������š����ġ���ѧ��Ӣ��ɼ�����������ܳɼ�
	//2����ʾ���п�����Ϣ������������š����ġ���ѧ��Ӣ��ɼ����ܳɼ�
	//3�����û�ѡ��3ʱ������ʾһ���Ӳ˵���
	//1	��ӡ�ܷ���߷�
	//2	��ӡ��ѧ��߷�
	//3	��ӡ������߷�
	//4	��ӡӢ����߷�
	//5 �˳�
	List<xinx>list=new ArrayList<xinx>();
	Scanner Sc=new Scanner(System.in);
   while (true){
	   System.out.println("�밴����1	.¼�뿼���ĸ߿���Ϣ  2.��ʾ���п�����Ϣ  3.��ѯ��߷� 4.�˳�����  ");
	   int n=Sc.nextInt();
	   if(n==1){
			   System.out.println("��¼�뿼���ĸ߿���Ϣ  ��ʽ������,���,����,��ѧ,Ӣ��,��������,12,78,98,87");
		   String str=Sc.next();
		   String[]arr=str.split(",");
		   xinx xi=new xinx();
		   xi.setName(arr[0]);
		   xi.setBianhao(arr[1]);
		   xi.setYuwen( Integer.parseInt(arr[2]));
		   xi.setShuxue( Integer.parseInt(arr[3]));
		   xi.setYingyu( Integer.parseInt(arr[4]));
		   xi.setZongchengji(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
		   list.add(xi);
		   System.out.println("��ӳɹ���");
	   
	   }else if(n==2){
		  System.out.println("��ʾ���п�����Ϣ");
		   for(xinx xi:list){
			   xi.info();
		   }
	  
	   
	   
	   }else if(n==3){
		  while(true){
			  
		   System.out.println("1.��ӡ�ܷ���߷�  2	.��ӡ��ѧ��߷�   3.��ӡ������߷�   4.��ӡӢ����߷�   5. ������һ�� ");
		int i=Sc.nextInt();
		if(i==1){
		int max=0;	
		for(xinx xi:list){
			if(max<xi.getZongchengji()){
				max=xi.getZongchengji();
				
			
				
			}
		}
		System.out.println("�ܳɼ��ǣ�"+max);
		}else if(i==2){
		int max=0;
		for(xinx xi:list){
			if(max<xi.getYuwen()){
				max=xi.getYuwen();
			
			}
		}	
		System.out.println("�����ܳɼ��ǣ�"+max);
		}else  if(i==3){
		int  max=0;	
		for(xinx xi:list){
			if(max<xi.getShuxue()){
				max=xi.getShuxue();
			}
		}
		System.out.println("��ѧ��߷��ǣ�"+max);
		
		}else  if(i==4){
			int max=0;
		for(xinx xi:list){
			if(max<xi.getYingyu()){
				max=xi.getYingyu();
			}
		}
		System.out.println("Ӣ����߷��ǣ�"+max);
		
		}else  if(i==5){
			System.out.println("������һ��");
			break;
		}else{
			System.out.println("������Ĳ��淶");
		}
	  
		
		  
		  
		  }   
	   
	   
	   
	   
	   
	   
	   
	   }else if(n==4){
		   System.out.println("�˳�");
		   break;
	   }else{
		   System.out.println("������Ĳ��淶��");
	   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   }





}

}





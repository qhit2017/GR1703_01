package myproject;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Test {
	public static void main(String[] args) {
		
		List<Shop>list=new ArrayList<Shop>();
		Scanner sc=new Scanner(System.in);
		while(true){
			System.out.println("1�����Ʒ��Ϣ2����3����4�ο����5�˳����� ");
			int a=sc.nextInt();
			if(a==1){
				System.out.println("��������Ʒ��Ϣ ���,����,�۸�,����  ����,001,����,20,90");
				String str=sc.next();
				String []arr=str.split(",");
				Shop s=new Shop();
				s.setNumber(arr[0]);
				s.setName(arr[1]);
				s.setPrice(Double.parseDouble(arr[2]));
				s.setQuantity(Integer.parseInt(arr[3]));
				 list.add(s);
				 System.out.println("�����Ʒ�ɹ�");
				 
		 }else if(a==2){
			System.out.println("���� ������Ʒ��ź����� ���� 001,80");
			String str=sc.next();
			String[]arr=str.split(",");
			
			String number=arr[0];
			int quantity=(Integer.parseInt(arr[1])); 
			
			boolean flag=true;
			  for(Shop si:list){
				  if(number.equals(si.getNumber())){
					 si.setQuantity(si.getQuantity()+quantity);
					 flag=false;
					 System.out.println("�����ɹ� ��ǰ��Ʒ�������ǣ�"+si.getQuantity());
					 break;
				  }
			  }
			  if(flag){
				  System.out.println("����ʧ��");
					  
			  }
		}else if(a==3){
			System.out.println("���� ������Ʒ��ź����� ���� 009 ,90");
			String str=sc.next();
			String []arr=str.split(",");
			
			String number=arr[0];
			int quantity=Integer.parseInt(arr[1]);
			
			boolean flag=true;
			
			for(Shop l:list){
				if(number.equals(l.getNumber())&&quantity<l.getQuantity()){
					l.setQuantity(l.getQuantity()-quantity);
					 flag=false;
					System.out.println("���۳ɹ� ��ǰ���"+l.getQuantity());
					break;
					
				}
			}
			if(flag){
				System.out.println("����ʧ��");
			}
		
			
		}else if(a==4){
			System.out.println("�鿴��� ������Ʒ���,����,�۸�,���� ���� 009,��ˢ,20,90");
			for(Shop s:list){
				s.info();
			}
		
		}else if(a==5){
			System.out.println("�˳� ϵͳ����");
			break;
		}else{
			System.out.println("����������ֲ��淶 ���������");
		
		}
	}
			
			 
			
			
		}
		
	}



package zuoye124;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class text {
	public static void main(String[] args) {

		/*1	¼��ͨѶ¼��Ϣ
		2	��ʾ����ͨѶ¼��Ϣ
		3	��������
		4	�Ա�����
		5	�绰����
		6	�˳�����
		*/
		
		List<information> list=new ArrayList<information>();
		Scanner sc=new Scanner(System.in);
		while(true){
			System.out.println("1¼��ͨѶ¼��Ϣ2��ʾ����ͨѶ¼��Ϣ3��������4�Ա�����5�绰����6�˳�����");
			int i=sc.nextInt();
			if(i==1){
				System.out.println("��������Ϣ������,����,��,110");
				String a=sc.next();
				String[] arr=a.split(",");
				information zz=new information();
				zz.setName(arr[0]);
				zz.setSex(arr[1].charAt(0));
				zz.setPhone(arr[2]);
				list.add(zz);
				
			
			}
			if(i==2){
				System.out.println("��ʾ����ͨѶ¼��Ϣ");
				for(int a=0;a<list.size();a++){
					information b=list.get(a);
					b.info();
				
				
				}
			
			
			
			
			}
			if(i==3){
				System.out.println("����������");
				for(int a=0;a<list.size();a++){
					String name=sc.next();
					information b=list.get(a);
					if(name.equals(b.getName())){
						b.info();
					}
				}
			
			}
			if(i==4){
				System.out.println("�������Ա�");
				String sex=sc.next();
				for(int a=0;a<list.size();a++){
					information b=list.get(a);
					if(sex.equals(b.getSex())){
						b.info();
					}	
				
				}
			
			}
			if(i==5){
				System.out.println("������绰");
				String phone =sc.next();
				for(int a=0;a<list.size();a++ ){
					information b=list.get(a);
					if(phone.equals(b.getPhone())){
						b.info();
					}
					
					
				}
			
			
			}
			if(i==6){
				System.out.println("�˳�����");
				break;
			}
			
			
			
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	
	
	
	
	
	
	
	
	}
	
	
	
	
	
	
	
	
	
}

package zuoye124;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class text {
	public static void main(String[] args) {

		/*1	录入通讯录信息
		2	显示所有通讯录信息
		3	姓名搜索
		4	性别搜索
		5	电话搜索
		6	退出功能
		*/
		
		List<information> list=new ArrayList<information>();
		Scanner sc=new Scanner(System.in);
		while(true){
			System.out.println("1录入通讯录信息2显示所有通讯录信息3姓名搜索4性别搜索5电话搜索6退出功能");
			int i=sc.nextInt();
			if(i==1){
				System.out.println("请输入信息：例如,张三,男,110");
				String a=sc.next();
				String[] arr=a.split(",");
				information zz=new information();
				zz.setName(arr[0]);
				zz.setSex(arr[1].charAt(0));
				zz.setPhone(arr[2]);
				list.add(zz);
				
			
			}
			if(i==2){
				System.out.println("显示所有通讯录信息");
				for(int a=0;a<list.size();a++){
					information b=list.get(a);
					b.info();
				
				
				}
			
			
			
			
			}
			if(i==3){
				System.out.println("请输入姓名");
				for(int a=0;a<list.size();a++){
					String name=sc.next();
					information b=list.get(a);
					if(name.equals(b.getName())){
						b.info();
					}
				}
			
			}
			if(i==4){
				System.out.println("请输入性别");
				String sex=sc.next();
				for(int a=0;a<list.size();a++){
					information b=list.get(a);
					if(sex.equals(b.getSex())){
						b.info();
					}	
				
				}
			
			}
			if(i==5){
				System.out.println("请输入电话");
				String phone =sc.next();
				for(int a=0;a<list.size();a++ ){
					information b=list.get(a);
					if(phone.equals(b.getPhone())){
						b.info();
					}
					
					
				}
			
			
			}
			if(i==6){
				System.out.println("退出功能");
				break;
			}
			
			
			
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	
	
	
	
	
	
	
	
	}
	
	
	
	
	
	
	
	
	
}

package practic;


import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;



public class system {

	public static void main(String[] args) {
		
		List<infor> list=new ArrayList<infor>();
		
		Scanner sc =new Scanner(System.in);
		infor ser=new infor();
		while(true){
		System.out.println("请按提示输入：1：录入通讯录   2：查询通讯录所有人  3：姓名搜索   4:性别搜索  5：电话搜索   6：结束系统");	
		String a=sc.next();
			if(a.equals("1")){
				System.out.println("请输入通讯录信息 ,例如：张三,男,12345678912");
				String b=sc.next();
				String arr[]=b.split(",");
				boolean t=true;
				if(arr.length!=3||arr[1].length()!=1){
					System.out.println("您输入的信息有误！！");
					t=false;	
				}
				if(t){
					infor human=new infor();
					human.setName(arr[0]);
					char sex=arr[1].charAt(0);
					human.setSex(sex);
					human.setPhoneNum(arr[2]);
					list.add(human);
					System.out.println("录入成功！！");
				}
			}else if(a.equals("2")){
				for(infor i:list){
					i.information();
				}
			}else if(a.equals("3")){
				System.out.println("请输入姓名,例如：张三");
				String c=sc.next();
				for(infor i:list){
					if(i.getName().equals(c)){
						System.out.println("查找完成：");
						i.information();
						break;
					}
				}
				
			}else if(a.equals("4")){
				System.out.println("请输入性别：男或者女");
				String sex2=sc.next();
				char sex3=sex2.charAt(0);
				if(sex3=='男'){
					for(infor i:list){
						if(i.getSex()==sex3){
							i.information();
						}
					}
				}else if(sex3=='女'){
					for(infor i:list){
						if(i.getSex()==sex3){
							i.information();
						}
				}
				}
			}else if(a.equals("5")){
				System.out.println("请输入电话号码：");
				String num=sc.next();
				for(infor i:list){
					if(i.getPhoneNum().equals(num)){
						i.information();
						break;
					}
				}
			
			}else if(a.equals("6")){
				
				System.out.println("系统结束,感谢您的使用！！！");
				break;
			}else{
				System.out.println("您数入的数字不规范,请重新输入");
			}
			
			}
		
		}
		
	}
	

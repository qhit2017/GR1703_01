package COM.XM;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class one {
	public static void main(String[] args) {
		List<tow> list=new ArrayList<tow>();
		Scanner sc=new Scanner(System.in);
		while(true){
			System.out.println("请按键：1.录入通讯录信息2.显示所有通讯录信息3.姓名搜索4.性别搜索5.电话搜索6.退出功能");
			int num=sc.nextInt();
			if(num==1){
				System.out.println("请需要录入通讯录信息，信息格式为：姓名,性别,电话");
				String str=sc.next();
				String arr[]=str.split(",");
				tow a=new tow ();
				a.setName(arr[0]);
				a.setXingbie(arr[1].charAt(0));
				a.setDianhua(Integer.parseInt(arr[2]));
				list.add(a);
				System.out.println("添加成功！");
			}else if(num==2){
				for(tow e:list){
					e.info();
				}
			}else if(num==3){
				System.out.println("请输入姓名：");
				String name=sc.next();
				for(tow e:list){
					if(name.equals(e.getName())){
						e.info();
					}
				}
			}else if(num==4){
				System.out.println("请输入性别：");
				char sex=sc.next().charAt(0);
				for(tow e:list){
					if(sex==e.getXingbie()){
						e.info();
					}
				}
			}else if(num==5){
				System.out.println("请输入电话：");
				int dianhua=sc.nextInt();
				for(tow e:list){
					if(dianhua==e.getDianhua()){
						e.info();
					}
				}
				
			}else if(num==6){
				System.out.println("系统停止");
				break;
			}else{
				System.out.println("请输入正确的按键！");
			}
			
		}
	}

}

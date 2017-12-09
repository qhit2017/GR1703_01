package homework;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class UserControl {
	public static void main(String[] args) {
		System.out.println("请输入操作数字进行如下操作：1.录入通讯录信息2.显示所有通讯录信息3.姓名搜索4.性别搜索5.电话搜索6.退出功能");
		Scanner input=new Scanner(System.in);
		List<CommunicationInfor> list=new ArrayList<CommunicationInfor>();
		method m=new DoMethod();
		while(true){
			int n=input.nextInt();
			if(n==1){
			m.Addpeople(list, input);
			}else if(n==2){
				m.findAll(list);
			m.findAll(list);			
			}else if(n==3){
				m.findbyname(list, input);
			}else if(n==4){
			m.findbysex(list, input);
			}else if(n==5){
			m.findbynumber(list, input);
			}else if(n==6){
				System.out.println("退出完成！");
				break;
			}else{
				System.out.println("您输入的操作不规范！请根据提示操作。");
			}
			
		}
	}

}

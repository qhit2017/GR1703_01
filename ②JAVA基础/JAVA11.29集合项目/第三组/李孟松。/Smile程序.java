package 作业3;

import java.awt.List;
import java.util.ArrayList;
import java.util.Scanner;

public class Smile程序 {
	
	//请按键 1 增加学生。2 查询所有学生。3 按照姓名查询学生信息。4 删除学生。5 修改学生信息。6 退出。
	
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		ArrayList<Demo>list=new ArrayList<Demo>();
		DemoIdemo t=new Demoismile();
		while(true){
			System.out.println("请按键 1 增加学生。2 查询所有学生。3 按照姓名查询学生信息。4 删除学生。5 修改学生信息。6 退出。");
			int n=sc.nextInt();
			if(n==1){
				//增加学生
				t.zhengjia(list, sc);
				
			}else if(n==2){
				//查询所有学生
				t.chaxun(list);
				
			}else if(n==3){
				//按照姓名查询学生信息
				t.shuchu(list, sc);
				
			}else if(n==4){
				//删除学生
				t.delete(list, sc);
				
			}else if(n==5){
				//修改学生信息
				t.xiugai(list, sc);
				
				
			}else if(n==6){
				System.out.println("退出");
				break;
			}else{
				System.out.println("您输入的数字不规范");
			}
		}
		
	}
	

}

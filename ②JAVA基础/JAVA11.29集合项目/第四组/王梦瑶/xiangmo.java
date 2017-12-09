package day28;


import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class xiangmo {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<student> list =new ArrayList<student>();
		studentserve sp=new studentimp();
		while(true){
		System.out.println("1是增加学生，2查询所有学生的信息，3查找学生，4修改学生的信息，5删除学生，6退出");
		int t=sc.nextInt();			
			if(t==1){
				//添加
				sp.add(list, sc);
			}else if(t==2){
				//遍历
				sp.find(list);
			}else if(t==3){
				//通过姓名查找学生
				sp.findname(list, sc);		
			}else if(t==4){
				//修改学生
				sp.up(list, sc);
			}else if(t==5){
				//删除学生
				sp.delete(list, sc);
			}else if(t==6){
				System.out.println("程序结束");
			}else{
				System.out.println("您输入的数，不符合标准");
			}
			
		}
	}
	

}

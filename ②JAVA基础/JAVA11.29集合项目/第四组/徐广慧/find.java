package zuoye28;

import java.util.ArrayList;
import java.util.Scanner;

public class find {

	//请按键：1增加学生   2查询所有学生   3输入姓名查找学生  4删除学生  5修改学生信息  6退出
	public static void main(String[] args) {
		Scanner sc= new Scanner(System.in);
		ArrayList<Student> a=new ArrayList<Student>();
		jiekou zz=new zuoyong();
		while(true){
			System.out.println("请按键：1增加学生   2查询所有学生   3输入姓名查找学生  4删除学生  5修改学生信息  6退出");
			int n=sc.nextInt();
			if(n==1){
			zz.zengjia(a, sc);
			}
			if(n==2){
				zz.suoyou(a);
				
			
			}
			if(n==3){
				
				zz.chaxun(a, sc);
			
			
			}
			if(n==4){
				zz.shanchu(a, sc);
				
			
			}
			if(n==5){
				zz.xiugai(a, sc);
				
			
			
			
			
			}
			if(n==6){
				System.out.println("退出");
				break;
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
}

}

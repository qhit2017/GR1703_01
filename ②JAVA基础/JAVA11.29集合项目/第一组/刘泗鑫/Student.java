
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class Student {

	public static void main(String[] args) {
		
		List<Infor>list = new ArrayList<Infor>();
		Scanner sc = new Scanner(System.in);
		StudentItest ti = new StudentItest();
		System.out.println("*************************************************************");
		System.out.println("\t\t 欢迎来到JavaSwing学生管理系统\n");
		System.out.println("\t\t\t1.增加学生\n");
		System.out.println("\t\t\t2.查询所有学生\n");
		System.out.println("\t\t\t3.按照姓名查询学生信息\n");
		System.out.println("\t\t\t4.删除学生\n");
		System.out.println("\t\t\t5.修改学生信息\n");
		System.out.println("\t\t\t6.退出\n");
		System.out.println("*************************************************************");
		
		while(true){
			System.out.println("1.增加学生 2.查询所有学生 3.按照姓名查询学生信息 4.删除学生 5.修改学生信息 6.退出");
			System.out.print("请输入：");
			int n = sc.nextInt();
			if(n==1){
				//增加学生
				ti.zhengjia(list, sc);
			}else if(n==2){
				//查询所有学生
				ti.chaxun(list);
			}else if(n==3){
				//按照姓名查询学生信息 
				ti.namechaxun(list, sc);
			}else if(n==4){
				//删除学生
				ti.deleteStudent(list, sc);
			}else if(n==5){
				//修改学生信息
				ti.xiugai(list, sc);
			}else if(n==6){
				System.out.println();
				System.out.println("本次服务到此结束.");
				System.out.println();
				break;
			}else{
				System.out.println("请根据提示输入正确指令！");
			}
		}
	}
	
	
}

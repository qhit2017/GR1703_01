package testday;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.jar.Attributes.Name;

public class o1 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		student i = new student();
		ArrayList<student>list= new ArrayList<student>();
		while(true){
			System.out.println("1,添加学生2,查询学生信息3,按照姓名查询4,删除学生5,修改信息6,退出");
			int a=sc.nextInt();
			if(a==1){
				System.out.println("添加学生");
				System.out.println("请输入学生信息：如张三，男，18，北京");
				String str=sc.next();
				String []arr=str.split(",");
			student s=new student();
			s.setName(arr[0]);
			s.setSex(arr[1].charAt(0));
			s.setAge(arr[2].charAt(0));
			s.setZhuzi(arr[3].charAt(0));
			list.add(s);
			for(student z:list){
				z.inof();
			}
			
			}else if(a==2){
				System.out.println("按照姓名查找");
				String name=sc.next();
				for(student s:list){
					if(name.equals(s.getName())){
						s.inof();
						break;
					}
				}
			}else if(a==3){
				System.out.println("删除学生");
				String name=sc.next();
				 for (int z=0;z<list.size();z++){
					 student s=list.get(s);
					 if(name.equalsIgnoreCase(s.getName())){
						 list.remove(s);
						 break;
					 }
					 
				 }
				
			}else if(a==4){
				System.out.println("修改信息");
				String str=sc.next();
				String[]arr=str.split(",");
				int age=Integer.parseInt(arr[1]);
				for(student s:list){
				if(name.equals(s.getName())){
					s.setAge(age);
					break;
				}	
				}
			}else if(a==5){
				System.out.println("退出");
			}else{
				System.out.println("你输出的信息查询不到");
			}
			System.out.println("");
		}
	}
}

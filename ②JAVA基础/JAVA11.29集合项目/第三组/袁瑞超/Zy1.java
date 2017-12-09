import java.util.ArrayList;
import java.util.Scanner;


public class Zy1 {
	public static void main(String[] args) {
	Scanner Sc =new Scanner(System.in);
	ArrayList<xuesheng>  list =new ArrayList<xuesheng>();               	
	while(true){
		System.out.println("请按键：1 增加学生  2 查询所有学生 3 按照姓名查询学生信息  4 删除学生 5 修改学生信息 6 退出");
	
		int n =Sc.nextInt();
	if(n==1){
		System.out.println("增加学生,例如：姓名：张三,性别：男,今年：18岁了,来自：周口");
		String  Str =Sc.next();
		String [] arr=Str.split("，");
	xuesheng  s=new xuesheng(); 
		s.setName(arr[0]);
		s.setSex(arr[1]);
		s.setAge(Integer.parseInt(arr[2]));
		s.setDizhi(arr[3]);
		list.add(s);
		System.out.println("添加成功！");
	}else  if (n==2){
		System.out.println("查询所有学生");
		for(xuesheng i:list){
			i.info();
		}
		
	}else  if (n==3){
		System.out.println(" 按照姓名查询学生信息");
	}else  if (n==4){
		System.out.println("删除学生");
	}else  if (n==5){
		System.out.println(" 修改学生信息");
	}else  if (n==6){
		System.out.println("退出");
		break;
	
	}else{
		System.out.println("您输入的数字有误，请按提示输入：");
	}
	
	}
	
	
	
	}
	



}

package 作业3;

import java.util.ArrayList;
import java.util.Scanner;

public class Demoismile implements DemoIdemo{
	
	

	@Override
	public void zhengjia(ArrayList<Demo>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入学生信息，如：张三，18，郑州");
		String str=sc.next();
		String []arr=str.split(",");
		Demo a=new Demo();
		a.setName(arr[0]);
		a.setAge(Integer.parseInt(arr[1]));
		a.setDizhi(arr[2]);
		a.info();
		list.add(a);
		System.out.println("添加成功");
	}

	@Override
	public void chaxun(ArrayList<Demo>list) {
		// TODO Auto-generated method stub
		for(Demo i:list){
			i.info();
	}

	}

	@Override
	public void shuchu(ArrayList<Demo>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入学生姓名");
		String name=sc.next();
		for(Demo s:list){
			if(name.equals(s.getName())){
				s.info();
				break;
			}
		}
	}
	@Override
	public void delete(ArrayList<Demo> list, Scanner sc) {
		// TODO Auto-generated method stub
		String name=sc.next();
		for(int i=0;i<list.size();i++){
			Demo s=new Demo();
			if(name.equals(s)){
				list.remove(s);
				break;
			}
		}
		System.out.println("删除成功");
	}

	@Override
	public void xiugai(ArrayList<Demo> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入学生姓名以及年龄");
		String str=sc.next();
		String[]arr=str.split(",");
		String name=arr[0];
		int age=Integer.parseInt(arr[1]);
		for(Demo s:list){
			if(name.equals(s.getName())){
				s.getAge();
				System.out.println("修改成功");
				break;
			}
		}
	}
}
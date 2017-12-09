package 课堂练习;

import java.util.List;
import java.util.Scanner;

public class StudentService implements StudentInface {

	@Override
	public void insert(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		Student s=new Student();
		System.out.println("增加学生比如：张三,男,19,北京");
		String str=sc.next();
		String[] arr=str.split(",");
		s.setName(arr[0]);
		s.setSex(arr[1].charAt(0));
		s.setAge(Integer.parseInt(arr[2]));
		s.setAddress(arr[3]);			
		list.add(s);
		System.out.println("添加完成！");	
		
	}

	@Override
	public void findAll(List<Student> list) {
		// TODO Auto-generated method stub
		System.out.println("查询所有学生");
		for(Student i:list){
			i.info();
		}		
	}

	@Override
	public void findByname(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入要查询的学生姓名");
		String name=sc.next();
		for(Student i:list){
			if(name.equals(i.getName())){
				i.info();
				break;
			}
		}
	}
	@Override
	public void delete(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入需要删除的学生");
		String name=sc.next();
		for(Student i:list){
			if(name.equals(i.getName())){				
				list.remove(i);
				System.out.println("删除成功");
				break;
			}
		}
		
	}

	@Override
	public void update(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入需要修改学生的名字，进行其年龄的修改");
		String name=sc.next();
		System.out.println("请输入需要改定的年龄：");
		int age=sc.nextInt();
		for(Student i:list){
			if(name.equals(i.getName())){
				i.setAge(age);
				System.out.println("修改完成!");
			}
		}
		
	}

	
}

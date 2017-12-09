package Work;
import java.util.List;
import java.util.Scanner;


public class 
StudentserriceImpI implements StudentIservice {

	@Override
	public void insert(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("学生信息,例如：小王,女,18,河南");
		String str=sc.nextLine();
		String[] arr = str.split(",");
		Student b=new Student();
		 int age = Integer.parseInt(arr[1]);
		 b.setName(arr[0]);
		 b.setSex(arr[1].charAt(0));
		 b.setAge(age);
		 b.setAddress(arr[3]);
		 list.add(b);
		 System.out.println("添加成功！");
		
	}

	@Override
	public void findAll(List<Student> list) {
		// TODO Auto-generated method stub
		for(Student b:list){
			b.info();
		}
	
	}

	@Override
	public void findByName(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入学生姓名");
		String name=sc.next();
		for(Student b:list){
			if(name.equals(b.getName())){
				b.info();
				break;
	}
		}
}

	@Override
	public void delete(List<Student>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("输入学生姓名及新的年龄");
		String str=sc.next();
		String[]arr=str.split(",");
		String name=arr[0];
		int age=Integer.parseInt(arr[1]);
		
		for(Student m:list){
			if(name.equals(m.getName())){
				m.setAge(age);
				System.out.println("修改成功");
				break;
			}
	}
	}


	@Override
	public void update(List<Student>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("输入学生姓名及新的年龄");
		String str=sc.next();
		String[]arr=str.split(",");
		String name=arr[0];
		int age=Integer.parseInt(arr[1]);
		
		for(Student m:list){
			if(name.equals(m.getName())){
				m.setAge(age);
				System.out.println("修改成功");
				break;
		
	}
		}
	}
}
package Work;
import java.util.List;
import java.util.Scanner;


public class 
StudentserriceImpI implements StudentIservice {

	@Override
	public void insert(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("ѧ����Ϣ,���磺С��,Ů,18,����");
		String str=sc.nextLine();
		String[] arr = str.split(",");
		Student b=new Student();
		 int age = Integer.parseInt(arr[1]);
		 b.setName(arr[0]);
		 b.setSex(arr[1].charAt(0));
		 b.setAge(age);
		 b.setAddress(arr[3]);
		 list.add(b);
		 System.out.println("��ӳɹ���");
		
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
		System.out.println("������ѧ������");
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
		System.out.println("����ѧ���������µ�����");
		String str=sc.next();
		String[]arr=str.split(",");
		String name=arr[0];
		int age=Integer.parseInt(arr[1]);
		
		for(Student m:list){
			if(name.equals(m.getName())){
				m.setAge(age);
				System.out.println("�޸ĳɹ�");
				break;
			}
	}
	}


	@Override
	public void update(List<Student>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("����ѧ���������µ�����");
		String str=sc.next();
		String[]arr=str.split(",");
		String name=arr[0];
		int age=Integer.parseInt(arr[1]);
		
		for(Student m:list){
			if(name.equals(m.getName())){
				m.setAge(age);
				System.out.println("�޸ĳɹ�");
				break;
		
	}
		}
	}
}
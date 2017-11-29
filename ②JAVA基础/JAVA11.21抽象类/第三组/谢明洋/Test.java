package WORK;

public class Test {
	public static void main(String[] args) {
		
		Student s=new Student();
		
		s.setName("小明");
		s.setAge(17);
		s.setSex('男');
		s.setAddress("河南");
		s.major="高级计算机应用技术";
		s.SchoolName="周职";
		s.say();
		
		Workder w=new Workder();
		
		w.setName("李明");
		w.setSex('男');
		w.setAge(36);
		w.setAddress("河南");
		w.major="工人";
		w.where="平顶山";
		w.say();
	}

}

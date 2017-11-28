package zuoye;

public class Sudent extends zuoye5{

	Sudent(String name, int age) {
		super(name,age);
	}

	public String getContent() {
		System.out.println("他是"+getName()+",今年"+getAge()+"岁了.");
		return "大闸蟹";
	}

	
	
}

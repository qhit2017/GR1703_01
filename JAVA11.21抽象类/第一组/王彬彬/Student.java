
public  class Student extends Person{

	private String school;

	Student(String name, int age,String content,String school){
		super( name, age, content);
		this.school=school;
	}
	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	@Override
	public String getContent() {
		System.out.println("我在"+school+"上学");
		return null;
	}
	
	
}

package zuoye1;

public class Dog implements Animal{

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("³Ô¹·Á¸");
		
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("ÍôÍôÍô");
		
		
		
	}
	
	private String name;
	private String breed;
	private String color;
	private  int   age;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBreed() {
		return breed;
	}

	public void setBreed(String breed) {
		this.breed = breed;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	public void Dog(){
		
	}
	public void dog(String name){
		this.name=name;
	}
	

}

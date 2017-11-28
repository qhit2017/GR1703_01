package Work5;
//b.创建狗，实现动物这个接口。要求狗具有的属性包括：姓名、品种、颜色、年龄（属性私有） ，
//并创建两种构造方法（1 无参构造方法 2 参数为姓名的构造方法）
public class Dog implements Dongwu {

	private String name;
	private String pinzhong;
	private String color;
	private int age;
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPinzhong() {
		return pinzhong;
	}
	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
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
	public void a(){
		
	}
	public void Name(){
		System.out.println("名字："+name);
	}
	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("狗会吃");
	}
	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("狗会叫");
	}
	Dog(){
		
	}
	Dog(String name){
		
	}
	
	
	
	
	
	
}

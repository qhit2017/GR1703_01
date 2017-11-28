package zuoye222;

public class dog implements Animal{
//姓名、品种、颜色、年龄
	private  String name;
	private  String pinzhong;
	private  String color;
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

	private  int	 age;
	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("潇洒的吃");
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("痛快的叫");
	}
	
		dog(){
			
		}
		dog(String name){
			
		}


		public void info(){
			System.out.println("我的名字是："+name+",我的品种是："+pinzhong+"我的颜色是："+color+"我的年龄是："+age);
		}



}

	


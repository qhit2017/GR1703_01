package zuoye222;

public class dog implements Animal{
//������Ʒ�֡���ɫ������
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
		System.out.println("�����ĳ�");
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("ʹ��Ľ�");
	}
	
		dog(){
			
		}
		dog(String name){
			
		}


		public void info(){
			System.out.println("�ҵ������ǣ�"+name+",�ҵ�Ʒ���ǣ�"+pinzhong+"�ҵ���ɫ�ǣ�"+color+"�ҵ������ǣ�"+age);
		}



}

	


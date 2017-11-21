package Dog;

public class Dog extends DongWu{
//	1  定义一个类：狗，属性包括： 品种，毛的颜色， 年龄，重量  方法包括：叫、吃、睡觉
//    要求属性私有，并提供get、set方法 
	
	private String pinzhong;
	private String color;
	private int age;
	private double zhongliang;
	
	
	
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



	public double getZhongliang() {
		return zhongliang;
	}



	public void setZhongliang(double zhongliang) {
		this.zhongliang = zhongliang;
	}



	public void dog(){
		System.out.println("狗的品种："+pinzhong+" 毛发颜色为"+color+" 年龄为"+age+" 重量为"+zhongliang);
	}
	
	public void chi(){
		System.out.println("会吃");
	}
	
	public void jiao(){
		System.out.println("会叫");
	}
	
	public void shuijiao(){
		System.out.println("会睡觉");
	}
	
	
	
	
	
	
}

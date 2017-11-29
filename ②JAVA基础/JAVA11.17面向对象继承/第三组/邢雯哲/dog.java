package zuoye;

public class dog extends dongwu{
	/*
	 * 1  定义一个类：狗，属性包括： 品种，毛的颜色， 年龄，重量  方法包括：叫、吃、睡觉
    要求属性私有，并提供get、set方法
	 * 
	 */
	
	private String pinzhong;
	
	private String color;
	
	private int age;
	
	private int zhongliang;
	
    private void info(){
    	
    	System.out.println("品种"+pinzhong+"颜色"+color+"年龄"+age+"重量"+zhongliang);
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
		if(age>50||age<60){
			System.out.println("不符合条件");
		}else
		     this.age = age;
	}

	public int getZhongliang() {
		return zhongliang;
	}

	public void setZhongliang(int zhongliang) {
		if(zhongliang>60||zhongliang<10){
			System.out.println("不符合条件");
		}else
		    this.zhongliang = zhongliang;
	}
}










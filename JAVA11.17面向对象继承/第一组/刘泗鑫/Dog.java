
public class Dog extends DongWu {
	
	/*
	 * 1  定义一个类：狗，属性包括： 品种，毛的颜色， 年龄，重量  方法包括：叫、吃、睡觉
    要求属性私有，并提供get、set方法 
	 */

		private String pinzhong;
		private String color;
		private int age;
		private int hight;

		
		
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
		public int getHight() {
			return hight;
		}
		public void setHight(int hight) {
			this.hight = hight;
		}
						
		
		public void jiao(){
			System.out.println("它的叫声是汪汪。");
		}
		public void eat(){
			System.out.println("它吃的是狗粮。");
			
		}
		public void shui(){
			System.out.println("它都是在晚上睡觉。");
		}
		
	
}


public class Dog extends DongWu {
	
	/*
	 * 1  ����һ���ࣺ�������԰����� Ʒ�֣�ë����ɫ�� ���䣬����  �����������С��ԡ�˯��
    Ҫ������˽�У����ṩget��set���� 
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
			System.out.println("���Ľ�����������");
		}
		public void eat(){
			System.out.println("���Ե��ǹ�����");
			
		}
		public void shui(){
			System.out.println("������������˯����");
		}
		
	
}

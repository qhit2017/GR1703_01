package zuoye;

public class dog extends dongwu{
	/*
	 * 1  ����һ���ࣺ�������԰����� Ʒ�֣�ë����ɫ�� ���䣬����  �����������С��ԡ�˯��
    Ҫ������˽�У����ṩget��set����
	 * 
	 */
	
	private String pinzhong;
	
	private String color;
	
	private int age;
	
	private int zhongliang;
	
    private void info(){
    	
    	System.out.println("Ʒ��"+pinzhong+"��ɫ"+color+"����"+age+"����"+zhongliang);
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
			System.out.println("����������");
		}else
		     this.age = age;
	}

	public int getZhongliang() {
		return zhongliang;
	}

	public void setZhongliang(int zhongliang) {
		if(zhongliang>60||zhongliang<10){
			System.out.println("����������");
		}else
		    this.zhongliang = zhongliang;
	}
}










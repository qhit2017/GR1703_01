
public class Dog extends Dongwu {
	/*
	 * 1  ����һ���ࣺ�������԰����� Ʒ�֣�ë����ɫ�� ���䣬����
	 *   �����������С��ԡ�˯��  Ҫ������˽�У����ṩget��set���� 
	 * 
	 * 
	 */
	private  String pinzhong;
	private char yanse;
	public String getPinzhong() {
		return pinzhong;
	}
	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
	}
	public char getYanse() {
		return yanse;
	}
	public void setYanse(char yanse) {
		this.yanse = yanse;
	}
	public int getNianling() {
		return nianling;
	}
	public void setNianling(int nianling) {
		this.nianling = nianling;
	}
	public double getZhongliang() {
		return zhongliang;
	}
	public void setZhongliang(double zhongliang) {
		this.zhongliang = zhongliang;
	}
	private int nianling;
	private double zhongliang;
	public void gou(){
		System.out.println("�Եĺܶ࣬�����ǣ�������˯���ܻ�����");
		
	}

}

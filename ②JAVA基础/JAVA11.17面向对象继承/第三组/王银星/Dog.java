
public class Dog extends Dongwu {
	/*
	 * 1  定义一个类：狗，属性包括： 品种，毛的颜色， 年龄，重量
	 *   方法包括：叫、吃、睡觉  要求属性私有，并提供get、set方法 
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
		System.out.println("吃的很多，叫声是：汪汪，睡觉很机敏。");
		
	}

}

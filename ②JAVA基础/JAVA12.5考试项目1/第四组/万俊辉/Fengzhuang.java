package com.WJH;

public class Fengzhuang {

	private String name;
	private int bianh;
	private int yuwen;
	private int shuxue;
	private int waiyu;
	private int zong;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBianh() {
		return bianh;
	}
	public void setBianh(int bianh) {
		this.bianh = bianh;
	}
	public int getYuwen() {
		return yuwen;
	}
	public void setYuwen(int yuwen) {
		this.yuwen = yuwen;
	}
	public int getShuxue() {
		return shuxue;
	}
	public void setShuxue(int shuxue) {
		this.shuxue = shuxue;
	}
	public int getWaiyu() {
		return waiyu;
	}
	public void setWaiyu(int waiyu) {
		this.waiyu = waiyu;
	}
	public int getZong() {
		return zong;
	}
	public void setZong(int zong) {
		this.zong = zong;
	}
	public void CJ(){
		System.out.println("姓名:"+name+",编号："+bianh+";成绩："+"语文"
						+yuwen+",数学："+shuxue+",外语"+waiyu+",总分："+zong);
	}
	
}

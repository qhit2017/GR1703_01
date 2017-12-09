package com.z;

public class xinx {
	private  String name;
	private  String bianhao;
	private  int   yuwen;
	private  int   shuxue;
	private  int   yingyu;
	private  int   zongchengji;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBianhao() {
		return bianhao;
	}
	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
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
	public int getYingyu() {
		return yingyu;
	}
	public void setYingyu(int yingyu) {
		this.yingyu = yingyu;
	}
	public int getZongchengji() {
		return zongchengji;
	}
	public void setZongchengji(int zongchengji) {
		this.zongchengji = zongchengji;
	}
	public void info(){
		System.out.println("姓名是："+name+",编号是："+bianhao+",语文是："+yuwen+",数学是："+shuxue+",英语是："+yingyu+",总成绩："+zongchengji);
		
	}




}

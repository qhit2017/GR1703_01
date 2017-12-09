package com.ketang;

public class Er {
	private String name;
	private int bianhao;
	private int yu;
	private int shu;
	private int ying;
	private int zong;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBianhao() {
		return bianhao;
	}
	public void setBianhao(int bianhao) {
		this.bianhao = bianhao;
	}
	public int getYu() {
		return yu;
	}
	public void setYu(int yu) {
		this.yu = yu;
	}
	public int getShu() {
		return shu;
	}
	public void setShu(int shu) {
		this.shu = shu;
	}
	public int getYing() {
		return ying;
	}
	public void setYing(int ying) {
		this.ying = ying;
	}
	public int getZong() {
		return zong;
	}
	public void setZong(int zong) {
		this.zong = zong;
	}
	public void info(){
		System.out.println("姓名:"+name+"\t编号:"+bianhao+"\t语文成绩:"+
	yu+"\t数学成绩:"+shu+"\t英语成绩:"+ying+"\t总成绩是:"+zong);
	}

}

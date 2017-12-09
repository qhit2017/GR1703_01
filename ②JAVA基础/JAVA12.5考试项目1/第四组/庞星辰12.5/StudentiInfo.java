package com.Kaoshi1;

public class StudentiInfo {

	private String name;
	private String number;
	private int yuwenchengji;
	private int shuxuechengji;
	private int yingyuchengji;
	private int total;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public int getYuwenchengji() {
		return yuwenchengji;
	}
	public void setYuwenchengji(int yuwenchengji) {
		this.yuwenchengji = yuwenchengji;
	}
	public int getShuxuechengji() {
		return shuxuechengji;
	}
	public void setShuxuechengji(int shuxuechengji) {
		this.shuxuechengji = shuxuechengji;
	}
	public int getYingyuchengji() {
		return yingyuchengji;
	}
	public void setYingyuchengji(int yingyuchengji) {
		this.yingyuchengji = yingyuchengji;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	
	public void info(){
		System.out.println("姓名:"+name+",编号:"+number+",语文成绩:"+yuwenchengji+",数学成绩:"+shuxuechengji+",英语成绩:"+yingyuchengji+"总分成绩:"+total);
	}
	
	
}

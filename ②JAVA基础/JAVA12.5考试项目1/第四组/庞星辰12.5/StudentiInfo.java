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
		System.out.println("����:"+name+",���:"+number+",���ĳɼ�:"+yuwenchengji+",��ѧ�ɼ�:"+shuxuechengji+",Ӣ��ɼ�:"+yingyuchengji+"�ֳܷɼ�:"+total);
	}
	
	
}

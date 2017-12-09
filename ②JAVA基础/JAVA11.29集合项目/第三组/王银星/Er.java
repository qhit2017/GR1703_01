package com.zuoye;

public class Er {
	private String name;
	private char xingbie;
	private int nianling;
	private String dizhi;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public char getXingbie() {
		return xingbie;
	}
	public void setXingbie(char xingbie) {
		this.xingbie = xingbie;
	}
	public int getNianling() {
		return nianling;
	}
	public void setNianling(int nianling) {
		this.nianling = nianling;
	}
	public String getDizhi() {
		return dizhi;
	}
	public void setDizhi(String dizhi) {
		this.dizhi = dizhi;
	}
	public void info(){
		System.out.println("我叫"+name+",性别是"+xingbie+"，年龄是"+nianling+",住址是"+dizhi);
	}

}

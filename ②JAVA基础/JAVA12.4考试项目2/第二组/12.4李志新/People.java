package com.lizhixin;

public class People {
	
	private String name;
	private char sex;
	private String phinonum;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public char getSex() {
		return sex;
	}
	public void setSex(char sex) {
		this.sex = sex;
	}
	public String getPhinonum() {
		return phinonum;
	}
	public void setPhinonum(String phinonum) {
		this.phinonum = phinonum;
	}
	
	public void info(){
		System.out.println("������"+name+",�Ա�"+sex+"���绰���룺"+phinonum);
	}

}

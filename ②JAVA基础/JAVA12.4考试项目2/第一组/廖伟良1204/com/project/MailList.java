package com.project;

public class MailList {
	private String name;
	private char sex;
	private String phoneNumber;
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
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public void info(){
		System.out.println("����:"+name+",�Ա�:"+sex+"�绰����:"+phoneNumber);
	}
}

package com.project;

public class StudentInfo {
	private String name;
	private String no;
	private int Chinese;
	private int Math;
	private int English;
	private int total;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public int getChinese() {
		return Chinese;
	}
	public void setChinese(int chinese) {
		Chinese = chinese;
	}
	public int getMath() {
		return Math;
	}
	public void setMath(int math) {
		Math = math;
	}
	public int getEnglish() {
		return English;
	}
	public void setEnglish(int english) {
		English = english;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public void info(){
		System.out.println("姓名:"+name+",编号"+no+",语文成绩:"+Chinese+",数学成绩:"+Math+",英语成绩:"+English+"总分:"+total);
	}
}

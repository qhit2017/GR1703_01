package com.xingwenzhe;

public class Student {
	
	private  String name;
	
	private String no;
	
	private int chinese;
	
	private int math;
	
	private int english;
	
	private int zongchengji;

	
	
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
		return chinese;
	}



	public void setChinese(int chinese) {
		this.chinese = chinese;
	}



	public int getMath() {
		return math;
	}



	public void setMath(int math) {
		this.math = math;
	}



	public int getEnglish() {
		return english;
	}



	public void setEnglish(int english) {
		this.english = english;
	}



	public int getZongchengji() {
		return zongchengji;
	}



	public void setZongchengji(int zongchengji) {
		this.zongchengji = zongchengji;
	}



	public void info(){
		System.out.println("姓名"+name+"编号"+no+"语文"+chinese+"数学"+math+"英语"+english+"总成绩"+zongchengji);
	}

}

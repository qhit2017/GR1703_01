package com.project;

public class Project {
	
	private String no;
	
	private String name;
	
	private Double jiage;
	
	private int shuliang;

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getJiage() {
		return jiage;
	}

	public void setJiage(Double jiage) {
		this.jiage = jiage;
	}

	public int getShuliang() {
		return shuliang;
	}

	public void setShuliang(int shuliang) {
		this.shuliang = shuliang;
	}
	
	
	public void inf(){
		System.out.println("编号:"+no+",名称"+name+",价格"+jiage+",数量"+shuliang);
	}

}

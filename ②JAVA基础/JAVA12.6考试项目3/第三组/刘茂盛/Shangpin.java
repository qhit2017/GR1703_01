package com.test3;

public class Shangpin {
	private String bianhao;
	private String name;
	private double price;
	private int shuliang;
	private int jinhuoshuliang;
	private double xiaoshoujine;
	
	public int getJinhuoshuliang() {
		return jinhuoshuliang;
	}
	public void setJinhuoshuliang(int jinhuoshuliang) {
		this.jinhuoshuliang = jinhuoshuliang;
	}
	public double getXiaoshoujine() {
		return xiaoshoujine;
	}
	public void setXiaoshoujine(double xiaoshoujine) {
		this.xiaoshoujine = xiaoshoujine;
	}
	public String getBianhao() {
		return bianhao;
	}
	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getShuliang() {
		return shuliang;
	}
	public void setShuliang(int shuliang) {
		this.shuliang = shuliang;
	}
	public void info(){
		System.out.println("商品编号："+getBianhao()+",名称："+getName()+",价格："+getPrice()+"元,初始数量："+getShuliang());
	}
	public void info1(){
		System.out.println(getName()+"进货数量："+getJinhuoshuliang());
	}
	public void info2(){
		System.out.println(getName()+"的销售记录："+getXiaoshoujine());
	}

}

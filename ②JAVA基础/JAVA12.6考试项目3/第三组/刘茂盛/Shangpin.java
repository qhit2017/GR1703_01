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
		System.out.println("��Ʒ��ţ�"+getBianhao()+",���ƣ�"+getName()+",�۸�"+getPrice()+"Ԫ,��ʼ������"+getShuliang());
	}
	public void info1(){
		System.out.println(getName()+"����������"+getJinhuoshuliang());
	}
	public void info2(){
		System.out.println(getName()+"�����ۼ�¼��"+getXiaoshoujine());
	}

}

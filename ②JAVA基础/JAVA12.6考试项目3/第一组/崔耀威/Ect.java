package com.work;

public class Ect {

	private String bianhao;
	private String name;
	private double jiage;
	private int shuliang;
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
	public double getJiage() {
		return jiage;
	}
	public void setJiage(double jiage) {
		this.jiage = jiage;
	}
	public int getShuliang() {
		return shuliang;
	}
	public void setShuliang(int shuliang) {
		this.shuliang = shuliang;
	}
	
	public void info(){
		System.out.println("��Ʒ���:"+bianhao+" ��Ʒ����:"+name+" ��Ʒ�۸�:"+jiage+" ���:"+shuliang);
	}
	
	
}

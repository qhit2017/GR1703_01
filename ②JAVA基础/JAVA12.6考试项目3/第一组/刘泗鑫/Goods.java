package com.KaoShi3;

public class Goods {
	

	
	private String numbering;
	
	private String name;
	
	private double price;
	
	private int count;

	private int jinhuo;
	
	private int xiaoshou;

	public String getNumbering() {
		return numbering;
	}

	public void setNumbering(String numbering) {
		this.numbering = numbering;
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

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getJinhuo() {
		return jinhuo;
	}

	public void setJinhuo(int jinhuo) {
		this.jinhuo = jinhuo;
	}

	public int getXiaoshou() {
		return xiaoshou;
	}

	public void setXiaoshou(int xiaoshou) {
		this.xiaoshou = xiaoshou;
	}
	
	public void info(){
		System.out.println("��Ʒ�����:"+numbering+",��Ʒ������:"+name+",�۸�:"+price+",���:"+count);
	}
	
	public void jinhuo(){
		System.out.println("��Ʒ�����:"+numbering+",��Ʒ������:"+name+",�۸�:"+price+",����:"+jinhuo);
	}
	
	public void xiaoshou(){
		System.out.println("��Ʒ�����:"+numbering+",��Ʒ������:"+name+",�۸�:"+price+",����:"+xiaoshou);
	}
}

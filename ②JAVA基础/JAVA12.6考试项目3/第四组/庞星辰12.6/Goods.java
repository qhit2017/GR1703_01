package com.Kaoshi2;

public class Goods {

	private String number;
	private String name;
	private double cost;
	private int count;
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	public void info(){
		System.out.println("��Ʒ���:"+number+",��Ʒ����:"+name+",��Ʒ�۸�:"+cost+",�������:"+count);
	}
	
	
	
	
}

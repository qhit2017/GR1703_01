package com.liumaosheng5;

public class Mouse implements Animal{

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("Ï²»¶Íµ³Ô´óÃ×£¡");
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("×Ì×Ì×ÌµÄ½Ð£¡");
	}
	private String name;
	private String variety;
	private int leg;
	private double weight;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getVariety() {
		return variety;
	}

	public void setVariety(String variety) {
		this.variety = variety;
	}

	public int getLeg() {
		return leg;
	}

	public void setLeg(int leg) {
		this.leg = leg;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}
	Mouse(){
		
	}
	Mouse(String name,String variety){
		this.name=name;
		this.variety=variety;
	}

}

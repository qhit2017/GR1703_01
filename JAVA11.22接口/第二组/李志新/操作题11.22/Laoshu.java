package com.lizhixin;

public class Laoshu implements Aniaml {

	private String name;
	private String pinzhong;
	private int legs;
	private double tizhong;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPinzhong() {
		return pinzhong;
	}

	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
	}

	public int getLegs() {
		return legs;
	}

	public void setLegs(int legs) {
		this.legs = legs;
	}

	public double getTizhong() {
		return tizhong;
	}

	public void setTizhong(double tizhong) {
		this.tizhong = tizhong;
	}

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("¥Û√≈—¿...");
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("÷®÷®÷®...");
	}
	public void Laoshu(){
		
	}
	public void Laoshu(String name,String pinzhong){
		this.name=name;
		this.pinzhong=pinzhong;
	}

}

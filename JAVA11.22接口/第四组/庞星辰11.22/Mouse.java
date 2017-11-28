package com.zuoye;

public class Mouse implements dongwu{

	private String name;
	private String pingzhong;
	private int tui;
	private int weight;
	
	public void info(){
		System.out.println("这老鼠叫"+name+"品种是"+pingzhong+"有"+tui+"腿"+"体重"+weight);
	}
	
	
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPingzhong() {
		return pingzhong;
	}


	public void setPingzhong(String pingzhong) {
		this.pingzhong = pingzhong;
	}


	public int getTui() {
		return tui;
	}


	public void setTui(int tui) {
		this.tui = tui;
	}


	public int getWeight() {
		return weight;
	}


	public void setWeight(int weight) {
		this.weight = weight;
	}


	Mouse(){
		
	}
	Mouse(String name,String pingzhong){
		this.name=name;
		this.pingzhong=pingzhong;
	}
	
	
	
	@Override
	public void jiao() {
		// TODO Auto-generated method stub
		System.out.println("咀嚼...");
	}

	@Override
	public void chi() {
		// TODO Auto-generated method stub
		System.out.println("吱吱吱...");
	}

}

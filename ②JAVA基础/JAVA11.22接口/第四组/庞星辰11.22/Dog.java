package com.zuoye;

public class Dog implements dongwu{

	private String name;
	private String pingzhong;
	private String yance;
	private int age;
	
	public void info(){
		System.out.println("这狗的名字叫："+name+",品种："+pingzhong+",颜色是"+yance+"的,今年"+age+"岁");
	}
	
	Dog(){
		
	}
	
	Dog(String name){
		this.name=name;
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

	public String getYance() {
		return yance;
	}

	public void setYance(String yance) {
		this.yance = yance;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public void jiao() {
		// TODO Auto-generated method stub
		System.out.println("嗷嗷叫....");
	}

	@Override
	public void chi() {
		// TODO Auto-generated method stub
		System.out.println("啃骨头....");
	}

}

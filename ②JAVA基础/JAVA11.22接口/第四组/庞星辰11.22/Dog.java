package com.zuoye;

public class Dog implements dongwu{

	private String name;
	private String pingzhong;
	private String yance;
	private int age;
	
	public void info(){
		System.out.println("�⹷�����ֽУ�"+name+",Ʒ�֣�"+pingzhong+",��ɫ��"+yance+"��,����"+age+"��");
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
		System.out.println("�໽�....");
	}

	@Override
	public void chi() {
		// TODO Auto-generated method stub
		System.out.println("�й�ͷ....");
	}

}

package com.w1;


public class Laoshu implements Dongwu {
	private String shuname;
	private String shupinzhong;
	private char shutui;
	private int shutizhong;
	private String jiao;
	public String getJiao() {
		return jiao;
	}
	public void setJiao(String jiao) {
		this.jiao = jiao;
	}
	public String getShuname() {
		return shuname;
	}
	public void setShuname(String shuname) {
		this.shuname = shuname;
	}
	public String getShupinzhong() {
		return shupinzhong;
	}
	public void setShupinzhong(String shupinzhong) {
		this.shupinzhong = shupinzhong;
	}
	public char getShutui() {
		return shutui;
	}
	public void setShutui(char shutui) {
		this.shutui = shutui;
	}
	public int getShutizhong() {
		return shutizhong;
	}
	public void setShutizhong(int shutizhong) {
		this.shutizhong = shutizhong;
	}
	public void laoshu(){
		
	}
	public void laoshu(String name,String pinzhong){
		this.shuname=shuname;
		this.shupinzhong=shupinzhong;
	}
	
	
	@Override
	public void chi() {
		// TODO Auto-generated method stub
		System.out.println("¿œ Û≥‘£∫");
	}

	@Override
	public void jiao() {
		// TODO Auto-generated method stub
		System.out.println("¿œ ÛΩ–£∫");
	}
	

}

package com.wjh;

import java.nio.channels.GatheringByteChannel;

public class Shopping {
	
	private int bianhao;
	private String name;
	private int jiage;
	private int shuliang;
	private String name1;
	private int shuliang1;
	private String name2;
	private int shuliang2;
	private long zzonge;

	
	
	public int getBianhao() {
		return bianhao;
	}
	public void setBianhao(int bianhao) {
		this.bianhao = bianhao;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getJiage() {
		return jiage;
	}
	public void setJiage(int jiage) {
		this.jiage = jiage;
	}
	public int getShuliang() {
		return shuliang;
	}
	public void setShuliang(int shuliang) {
		this.shuliang = shuliang;
	}
	public String getName1() {
		return name1;
	}
	public void setName1(String name1) {
		this.name1 = name1;
	}
	public int getShuliang1() {
		return shuliang1;
	}
	public void setShuliang1(int shuliang1) {
		this.shuliang1 = shuliang1;
	}
	public String getName2() {
		return name2;
	}
	public void setName2(String name2) {
		this.name2 = name2;
	}
	public int getShuliang2() {
		return shuliang2;
	}
	public void setShuliang2(int shuliang2) {
		this.shuliang2 = shuliang2;
	}
	public long getZzonge() {
		return zzonge;
	}
	public void setZzonge(long zzonge) {
		this.zzonge = zzonge;
	}
	public void info(){
		System.out.println("编号："+bianhao+",名称："+name+",价格："+jiage+"元,数量："+shuliang+".");
	}
	public void xse(){
		zzonge = getJiage()*getShuliang1();
		System.out.println(name1+"销售了"+shuliang1+",销售额为："+zzonge+".");
	}
	public void jr(){
		System.out.println(name2+"进入了"+shuliang2+".");
	}
	
}

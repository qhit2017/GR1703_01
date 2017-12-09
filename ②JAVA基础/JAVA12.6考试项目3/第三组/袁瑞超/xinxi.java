package com.zxiangmu;

public class xinxi {
	private String bianhao;
	private String name;
	private int  jiage;
	private int  chushishuliang;
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
	public int getJiage() {
		return jiage;
	}
	public void setJiage(int jiage) {
		this.jiage = jiage;
	}
	public int getChushishuliang() {
		return chushishuliang;
	}
	public void setChushishuliang(int chushishuliang) {
		this.chushishuliang = chushishuliang;
	}

	public void info(){
		System.out.println("商品编号："+bianhao+",名字："+name+",价格："+jiage);
	}

}

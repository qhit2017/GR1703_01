package com.ketang;

public class Er {
	private int bianhao;
	private String name;
	private int jiage;
	private int chushishuliang;
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
	public int getChushishuliang() {
		return chushishuliang;
	}
	public void setChushishuliang(int chushishuliang) {
		this.chushishuliang = chushishuliang;
	}
	public void info(){
		System.out.println("��Ʒ����ǣ�"+bianhao+
				"\t�������ǣ�"+name+"\t���۸��ǣ�"+jiage+"\tԪ;������"+chushishuliang);
	}

}

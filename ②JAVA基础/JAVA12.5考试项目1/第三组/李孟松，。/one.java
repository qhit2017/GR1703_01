package com.procedure;

public class one {
	private String name;
	private String bianhao;
	private int yuwen;
	private int shuxue;
	private int yingyu;
	private int zongfen;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBianhao() {
		return bianhao;
	}
	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
	}
	public int getYuwen() {
		return yuwen;
	}
	public void setYuwen(int yuwen) {
		this.yuwen = yuwen;
	}
	public int getShuxue() {
		return shuxue;
	}
	public void setShuxue(int shuxue) {
		this.shuxue = shuxue;
	}
	public int getYingyu() {
		return yingyu;
	}
	public void setYingyu(int yingyu) {
		this.yingyu = yingyu;
	}
	public int getZongfen() {
		return zongfen;
	}
	public void setZongfen(int zongfen) {
		this.zongfen = zongfen;
	}
	public void info(){
		System.out.println("������"+name+",���"+bianhao+",���ĳɼ�"+yuwen+",��ѧ�ɼ�"+shuxue+",Ӣ��ɼ�"+yingyu+",�ܷ�"+zongfen);
	}

}

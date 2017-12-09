package 作业1;

public class student {

	private String name;
	private String bianhao;
	private int yu;
	private int shu;
	private int ying;
	private int zhongfen;
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
	public int getYu() {
		return yu;
	}
	public void setYu(int yu) {
		this.yu = yu;
	}
	public int getShu() {
		return shu;
	}
	public void setShu(int shu) {
		this.shu = shu;
	}
	public int getYing() {
		return ying;
	}
	public void setYing(int ying) {
		this.ying = ying;
	}
	public int getZhongfen() {
		return zhongfen;
	}
	public void setZhongfen(int zhongfen) {
		this.zhongfen = zhongfen;
	}
	public void inof(){
		System.out.println("姓名"+name+"编号"+bianhao+"语文是"+yu+"数学是"+shu+"英语是"+ying+"总分是"+zhongfen);
	}
}

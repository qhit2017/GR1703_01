package zailian;

public class student {
	private String name;
	private int bian;
	private int chinese;
	private int math;
	private int yingyu;
	private int zong;
	public void sofi(){
		System.out.println("ѧ����������"+name+",�����"+bian+",���ĳɼ���"+chinese+",��ѧ�ɼ���"+math+";Ӣ��ɼ���"+yingyu
				+",�ܳɼ���"+zong);
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBian() {
		return bian;
	}
	public void setBian(int bian) {
		this.bian = bian;
	}
	public int getChinese() {
		return chinese;
	}
	public void setChinese(int chinese) {
		this.chinese = chinese;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getYingyu() {
		return yingyu;
	}
	public void setYingyu(int yingyu) {
		this.yingyu = yingyu;
	}
	public int getZong() {
		return zong;
	}
	public void setZong(int zong) {
		this.zong = zong;
	}
	
	
}

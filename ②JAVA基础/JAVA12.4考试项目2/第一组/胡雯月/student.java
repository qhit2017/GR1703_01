package zailian;

public class student {
	private String name;
	private int bian;
	private int chinese;
	private int math;
	private int yingyu;
	private int zong;
	public void sofi(){
		System.out.println("学生的姓名是"+name+",编号是"+bian+",语文成绩是"+chinese+",数学成绩是"+math+";英语成绩是"+yingyu
				+",总成绩是"+zong);
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

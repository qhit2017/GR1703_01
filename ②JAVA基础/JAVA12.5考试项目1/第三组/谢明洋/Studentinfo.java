package Day1;

public class Studentinfo {
	
	private String name;
	private String cout;
	public String getCout() {
		return cout;
	}
	private int yuwen;
	private int math;
	private int English;
	private int total;
	
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public void setCout(String cout) {
		this.cout = cout;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getYuwen() {
		return yuwen;
	}
	public void setYuwen(int yuwen) {
		this.yuwen = yuwen;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getEnglish() {
		return English;
	}
	public void setEnglish(int english) {
		English = english;
	}
	public void info(){
		System.out.println("学生姓名："+getName());
		System.out.println("学生编号："+getCout());
		System.out.println("语文成绩："+getYuwen());
		System.out.println("数学成绩："+getMath());
		System.out.println("英语成绩："+getEnglish());
		System.out.println("总分："+getTotal());
		
	}

}

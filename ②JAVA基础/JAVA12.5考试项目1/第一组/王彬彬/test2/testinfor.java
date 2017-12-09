package test2;

public class testinfor {

	private String name;
	private int numbering;
	private int chinese;
	private int math;
	private int english;
	private int all;
	public int getAll() {
		return all;
	}
	public void setAll(int all) {
		this.all = all;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNumbering() {
		return numbering;
	}
	public void setNumbering(int numbering) {
		this.numbering = numbering;
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
	public int getEnglish() {
		return english;
	}
	public void setEnglish(int english) {
		this.english = english;
	}
	
	public void infor(){
		System.out.println("我叫"+name+",语文分数是："+chinese+",数学分数是："+math+",英语分数是："+english+",总分是："+all);
	}
	
	
	
	
	
	
}

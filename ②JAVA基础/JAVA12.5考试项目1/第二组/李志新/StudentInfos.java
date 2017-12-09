
public class StudentInfos {
	//姓名、编号、语文、数学、英语成绩
	private String name;
	
	private String nember;
	
	private int language;
	
	private int math;
	
	private int english;
	
	private int total;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNember() {
		return nember;
	}

	public void setNember(String nember) {
		this.nember = nember;
	}

	public int getLanguage() {
		return language;
	}

	public void setLanguage(int language) {
		this.language = language;
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

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	
	public void info(){
		System.out.println("姓名："+name+",编号："+nember+",语文："+language+",数学："+math+",英语："+english+",总分："+total);
	}

}

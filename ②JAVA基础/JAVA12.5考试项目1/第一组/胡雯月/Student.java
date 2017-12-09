package comproject;

public class Student {

	
	 private String  name;
	 private String  numbuter;
	 private int     chinese;
	 private int     math;
	 private int     english;
	 private int     total;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumbuter() {
		return numbuter;
	}
	public void setNumbuter(String numbuter) {
		this.numbuter = numbuter;
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
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	

	}
   public  void  info(){
	   System.out.println("姓名"+name+",编号"+numbuter+",语文成绩"+chinese+",数学成绩"+math+",英语成绩"+english+",总分"+total);
	   
   }
}
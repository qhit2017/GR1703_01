package yz;

public class StudentInfo {

	private String name;
	private String no;
	private int chinese;
	private int math;
	private int english;
	private int total;
	
	private char xxx;
 	
	 char a ='��';
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
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
	
	
	public void info(){
		System.out.println("����:"+name+" ���"+no+" ���ĳɼ�"+chinese+" ��ѧ�ɼ�"+math+" Ӣ��ɼ�"+english+" �ܷ�"+total);
	}
	
	
	
}

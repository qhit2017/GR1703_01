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
		System.out.println("ѧ��������"+getName());
		System.out.println("ѧ����ţ�"+getCout());
		System.out.println("���ĳɼ���"+getYuwen());
		System.out.println("��ѧ�ɼ���"+getMath());
		System.out.println("Ӣ��ɼ���"+getEnglish());
		System.out.println("�ܷ֣�"+getTotal());
		
	}

}

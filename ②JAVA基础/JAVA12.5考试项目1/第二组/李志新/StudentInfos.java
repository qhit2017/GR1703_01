
public class StudentInfos {
	//��������š����ġ���ѧ��Ӣ��ɼ�
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
		System.out.println("������"+name+",��ţ�"+nember+",���ģ�"+language+",��ѧ��"+math+",Ӣ�"+english+",�ܷ֣�"+total);
	}

}

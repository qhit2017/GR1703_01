
public abstract class Person {
	
	// ����������Person����������󷽷�getContent()�Ż��ַ�����
	 //  	���ⶨ��say��������getContent���������������
	//	����Sudent��Workder�̳�Person�ࣻ
	//	��ʵ�ֳ�����ķ���getContent��ʵ�������󲢷ֱ����say�������� ��
	
	private String name;
	private int age;
	private int weight;
	private String content;
	
	Person(String name, int age,String content){
		this.name=name;
		this.age=age;
		this.content=content;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public abstract String getContent();
	
	public void say(){
		getContent();
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
	
	
}

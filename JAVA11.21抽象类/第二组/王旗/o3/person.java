package o3;
/*3������������Person����������󷽷�getContent()�Ż��ַ�����
      ���ⶨ��say��������getContent���������������
       ����Sudent��Workder�̳�Person�ࣻ��ʵ�ֳ�����ķ���getContent��
         ʵ�������󲢷ֱ����say�������� ��*/
public  abstract class person {
	 
	private String name;
	private int age;
	public person(String name ,int age){
		this.name=name;
		this.age=age;
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

	public void say(){
		System.out.println("���ǲ�һ��"+name+"����"+age);
	}

}

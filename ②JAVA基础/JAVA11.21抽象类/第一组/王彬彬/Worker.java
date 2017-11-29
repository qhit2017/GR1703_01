
public class Worker extends Person{

	private String work;
	Worker(String name, int age,String content,String work){
		super( name,  age, content);
		this.work=work;
	}

	public String getWork() {
		return work;
	}

	public void setWork(String work) {
		this.work = work;
	}

	@Override
	public String getContent() {
		System.out.println("我的工作是"+work);
		return null;
	}
	
	
}

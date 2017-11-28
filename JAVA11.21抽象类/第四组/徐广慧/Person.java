package zuoye21;

public 	abstract	class Person {
		private String name;
		private	String job;
		private int age;
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getjob() {
			return job;
		}
		public void setColor(String job) {
			this.job = job;
		}
		public int getAge() {
			return age;
		}
		public void setAge(int age) {
			this.age = age;
		}
		
		public abstract	void getContent();
		public void say(){
		
			getContent();

		
		
		}
}
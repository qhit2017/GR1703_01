import javax.swing.plaf.synth.SynthSeparatorUI;


public class yi extends san{
//1  定义一个类：狗，属性包括： 品种，毛的颜色， 年龄，重量  方法包括：叫、吃、睡觉
   // 要求属性私有，并提供get、set方法 
	private String pz;
	private String ms;
	private int age;
	private long tz;
	public void chi(){
		System.out.println("它最爱吃骨头");
	}
		public void sj(){
			System.out.println("它老是爱白天睡觉");
		}
		public void jiao(){
			System.out.println("它饿的时候老是爱叫");
		}
		public String getPz() {
			return pz;
		}
		public void setPz(String pz) {
			this.pz = pz;
		}
		public String getMs() {
			return ms;
		}
		public void setMs(String ms) {
			this.ms = ms;
		}
		public int getAge() {
			return age;
		}
		public void setAge(int age) {
			this.age = age;
		}
		public long getTz() {
			return tz;
		}
		public void setTz(long tz) {
			this.tz = tz;
		}
		public void info(){
			System.out.println("狗的品种是"+pz+",毛色"+ms+",年龄是"+",age"+",体重"+tz);
		}
		}
	
	
	


import javax.swing.plaf.synth.SynthSeparatorUI;


public class yi extends san{
//1  ����һ���ࣺ�������԰����� Ʒ�֣�ë����ɫ�� ���䣬����  �����������С��ԡ�˯��
   // Ҫ������˽�У����ṩget��set���� 
	private String pz;
	private String ms;
	private int age;
	private long tz;
	public void chi(){
		System.out.println("����Թ�ͷ");
	}
		public void sj(){
			System.out.println("�����ǰ�����˯��");
		}
		public void jiao(){
			System.out.println("������ʱ�����ǰ���");
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
			System.out.println("����Ʒ����"+pz+",ëɫ"+ms+",������"+",age"+",����"+tz);
		}
		}
	
	
	


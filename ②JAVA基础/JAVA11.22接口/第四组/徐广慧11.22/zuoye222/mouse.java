package zuoye222;
//������Ʒ�֡������ȡ�����
public class mouse	implements Animal {
	private String name;
	private String pinzhong;
	private int		 jitiaotui;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPinzhong() {
		return pinzhong;
	}

	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
	}

	public int getJitiaotui() {
		return jitiaotui;
	}

	public void setJitiaotui(int jitiaotui) {
		this.jitiaotui = jitiaotui;
	}

	public double getTizhong() {
		return tizhong;
	}

	public void setTizhong(double tizhong) {
		this.tizhong = tizhong;
	}

	private double tizhong;
	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("��������ĳ�");
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("��������Ľ�");
	}

	mouse(){
		
	}
	mouse(String pinzhong,String name){
		
	}


	public void info(){
		System.out.println("�ҵ������ǣ�"+name+",�ҵ�Ʒ���ǣ�"+pinzhong+"�ҵ����У�"+jitiaotui+"��");
	}




}

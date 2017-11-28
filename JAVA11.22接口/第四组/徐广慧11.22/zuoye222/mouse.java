package zuoye222;
//姓名、品种、几条腿、体重
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
		System.out.println("光明正大的吃");
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("光明正大的叫");
	}

	mouse(){
		
	}
	mouse(String pinzhong,String name){
		
	}


	public void info(){
		System.out.println("我的名字是："+name+",我的品种是："+pinzhong+"我的腿有："+jitiaotui+"个");
	}




}

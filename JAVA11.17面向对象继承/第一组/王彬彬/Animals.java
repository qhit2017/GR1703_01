
public class Animals {

	private int legcount;
	private String eyecolor;
	
	public int getLegcount() {
		return legcount;
	}

	public void setLegcount(int legcount) {
		this.legcount = legcount;
	}

	public String getEyecolor() {
		return eyecolor;
	}

	public void setEyecolor(String eyecolor) {
		this.eyecolor = eyecolor;
	}

	public void infor(){
		System.out.println("狗狗有"+legcount+"条腿"+",眼睛的颜色是:"+eyecolor);
	}
	
	
}

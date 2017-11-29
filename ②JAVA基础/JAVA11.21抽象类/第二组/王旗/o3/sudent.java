package o3;

public class sudent extends person{
private String shangke;



public String getShangke() {
	return shangke;
}
public void setShangke(String shangke) {
	this.shangke = shangke;
}
public void say(){
	System.out.println("每天都要上课"+shangke);
}
	public sudent(String name, int age) {
		super(name, age);
		// TODO Auto-generated constructor stub
	}

}


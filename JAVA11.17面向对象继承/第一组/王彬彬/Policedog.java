
public class Policedog extends Dog {

	private int speed;

	public int getSpeed() {
		return speed;
	}

	public void setSpeed(int speed) {
		this.speed = speed;
	}
	
	public void work(){
		System.out.println("狗狗最快能跑"+speed+"千米每小时");
	}
	
	
	
}

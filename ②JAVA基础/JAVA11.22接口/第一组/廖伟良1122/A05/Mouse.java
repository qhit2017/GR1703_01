package A05;

public class Mouse implements Animal{

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("¿œ Û≥‘"+eat);
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("¿œ Û"+call+"Ω–");
	}
	private String eat;
	private String call;
	private String name;
	private String type;
	private int leg;
	private double weight;
	
	public String getEat() {
		return eat;
	}

	public void setEat(String eat) {
		this.eat = eat;
	}

	public String getCall() {
		return call;
	}

	public void setCall(String call) {
		this.call = call;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getLeg() {
		return leg;
	}

	public void setLeg(int leg) {
		this.leg = leg;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	Mouse(){
		
	}
	Mouse(String name,String type){
		this.name = name;
		this.type = type;
	}

}

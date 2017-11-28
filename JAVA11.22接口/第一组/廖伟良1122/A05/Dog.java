package A05;

public class Dog implements Animal{

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("¹·³Ô"+eat);
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("¹·"+call+"½Ð");
	}
	private String call;
	private String eat;
	private String name;
	private String type;
	private String color;
	private double weight;
	
	public String getCall() {
	return call;
	}
	
	public void setCall(String call) {
		this.call = call;
	}
	
	public String getEat() {
		return eat;
	}
	
	public void setEat(String eat) {
		this.eat = eat;
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

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	Dog(){
		
	}
	Dog(String name,String type){
		this.name = name;
		this.type = type;
	}
}

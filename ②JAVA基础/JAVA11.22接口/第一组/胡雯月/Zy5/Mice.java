package zuoye1;

public class Mice implements Animal{

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("≥‘¡∏ ≥");
		
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("÷®÷®÷®");
		
	}
	
	private String name;
	private String breed;
	private int    leg;
	private double  weight;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBreed() {
		return breed;
	}

	public void setBreed(String breed) {
		this.breed = breed;
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
	
	public void mice(){
		
	}
	public void mice(String name,String breed){
		this.name=name;
		this.breed=breed;
	}

}

package Homework3;

public class Test {

	public static void main(String[] args) {
		
		square zfx =new square();
		zfx.setPerimeter(16);
		zfx.setArea(16);
		zfx.perimeter();;
		zfx.area();
		
		Trapezoid tx = new Trapezoid();
		tx.setLengthAbove(1);
		tx.setLengthBelow(2);
		tx.setHeight(4);
		tx.setArea(6);
		tx.setPerimeter(12);
		tx.perimeter();
		tx.area();
	}
	
}

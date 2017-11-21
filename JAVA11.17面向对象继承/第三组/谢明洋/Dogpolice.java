
public class Dogpolice extends Dog  {
	/*
	 * 2  定义一个类：警犬 并继承第一题的类：狗
    属性：最快时速
	 */
	public int Maxspeed;
	
	
	
	public void work(){
		System.out.println("有一只品种为"+getKind()+"犬，它的颜色是"
				+getColor() +",它的年龄为："
				+getAge()+"，有"+getWeight()+"kg重。"+"它有"+legs+"条腿"
				+ ",眼睛是"+eyecolor+",它的最快速度为"+Maxspeed+"km");
	}
	

}

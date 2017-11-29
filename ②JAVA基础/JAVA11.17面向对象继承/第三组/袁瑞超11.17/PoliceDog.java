
public class PoliceDog extends Dog{
	/*
	 * 定义一个类：警犬 并继承第一题的类：狗
    属性：最快时速
	方法：work
	 * 
	 */
	private int shisu;

	public int getShisu() {
		return shisu;
	}

	public void setShisu(int shisu) {
		this.shisu = shisu;
	}
	public void work(){
		System.out.println("它是"+getVariety()+"犬"+"，它是"+getColor()+"，它"+getAge()+"岁了，它有"+getWeight()+"公斤！"+"它喜欢汪汪汪！喜欢吃骨头！喜欢睡觉！"
		+"它的最快时速是"+shisu+"km/h，它有"+getLeg()+"条腿，它每天都要工作！");
	}

}

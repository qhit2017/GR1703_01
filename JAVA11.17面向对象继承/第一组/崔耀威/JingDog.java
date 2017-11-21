
public class JingDog extends Dog {
			/*2  定义一个类：警犬 并继承第一题的类：狗
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
		System.out.println("我最快能跑:"+shisu);	
	}
}

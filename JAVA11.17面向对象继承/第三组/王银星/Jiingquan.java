
public class Jiingquan extends Dog {
	/*
	 * 2  定义一个类：警犬 并继承第一题的类：狗
	 *  属性：最快时速
	 *  方法：work
	 */
	private long shisu;
	public long getShisu() {
		return shisu;
	}
	public void setShisu(long shisu) {
		this.shisu = shisu;
	}
	public void work(){
		System.out.println("品种是："+getPinzhong()+"，颜色是："+getYanse()+"，重量是："+getZhongliang()+"，年龄是："+getNianling()+"，眼睛颜色是:"+getYanjingyanse()
				+"，腿的数量是："+getTuishu()+"，最快时速是："+getShisu());
	}

}

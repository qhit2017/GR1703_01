package Work5;

public class Laosu implements Dongwu {
	// c.创建老鼠 实现动物这个接口。要求老鼠具有的属性包括：姓名、品种、几条腿、体重（属性私有） ，
	//并创建两种构造方法（1 无参构造方法 2 参数为姓名、品种的构造方法）
	
		private String name;
		private String pz;
		private int tui;
		private double zhongliang;
		
		
		
		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getPz() {
			return pz;
		}

		public void setPz(String pz) {
			this.pz = pz;
		}

		public int getTui() {
			return tui;
		}

		public void setTui(int tui) {
			this.tui = tui;
		}

		public double getZhongliang() {
			return zhongliang;
		}

		public void setZhongliang(double zhongliang) {
			this.zhongliang = zhongliang;
		}

		public void a(){
			
		}
	
		public void pinzhong(){
			System.out.println("品种："+pz);
		}

		@Override
		public void eat() {
			// TODO Auto-generated method stub
			System.out.println("老鼠会吃");
		}

		@Override
		public void call() {
			// TODO Auto-generated method stub
			System.out.println("老鼠会叫");
		}
		Laosu(){
			
		}
		Laosu(String name,String pz){
			
		}
		
		
		
	
}

package Work5;

public class Laosu implements Dongwu {
	// c.�������� ʵ�ֶ�������ӿڡ�Ҫ��������е����԰�����������Ʒ�֡������ȡ����أ�����˽�У� ��
	//���������ֹ��췽����1 �޲ι��췽�� 2 ����Ϊ������Ʒ�ֵĹ��췽����
	
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
			System.out.println("Ʒ�֣�"+pz);
		}

		@Override
		public void eat() {
			// TODO Auto-generated method stub
			System.out.println("������");
		}

		@Override
		public void call() {
			// TODO Auto-generated method stub
			System.out.println("������");
		}
		Laosu(){
			
		}
		Laosu(String name,String pz){
			
		}
		
		
		
	
}

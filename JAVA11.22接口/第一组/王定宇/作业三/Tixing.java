package Work4;

public class Tixing implements XingZhuang {

	//c.�������Σ�ʵ����״����ӿڡ�Ҫ�����ξ��е����԰������ϱ��ϡ��±߳����ߡ��ܳ������������˽�У� ��
	//���������ֹ��췽����1 �޲ι��췽�� 2 ����Ϊ�ϱ߳����±߳��Ĺ��췽����
	
	private int shangbian;
	private int xiabian;
	private int gao;
	private int zhouchang;
	private int mianji;
	
	
	
	public int getShangbian() {
		return shangbian;
	}

	public void setShangbian(int shangbian) {
		this.shangbian = shangbian;
	}

	public int getXiabian() {
		return xiabian;
	}

	public void setXiabian(int xiabian) {
		this.xiabian = xiabian;
	}

	public int getGao() {
		return gao;
	}

	public void setGao(int gao) {
		this.gao = gao;
	}

	public int getZhouchang() {
		return zhouchang;
	}

	public void setZhouchang(int zhouchang) {
		this.zhouchang = zhouchang;
	}

	public int getMianji() {
		return mianji;
	}

	public void setMianji(int mianji) {
		this.mianji = mianji;
	}

	public void wuchan(){
		
	}
	
	public void shangbianchang(){
		System.out.println(shangbian+xiabian);
	}

	@Override
	public void Zouchang() {
		// TODO Auto-generated method stub
		System.out.println("���ε��ܳ��ǣ�"+zhouchang);
	}

	@Override
	public void Mianji() {
		// TODO Auto-generated method stub
		System.out.println("���ε�����ǣ�"+mianji);
	}
	
	Tixing(){
		
	}
	Tixing(int shangbian,int xiabian){
		
	}
	
	
	
	
	
	
	
}

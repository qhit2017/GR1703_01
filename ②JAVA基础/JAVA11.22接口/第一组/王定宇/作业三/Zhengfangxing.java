package Work4;

public class Zhengfangxing implements XingZhuang {
	//b.���������Σ�ʵ����״����ӿڡ�Ҫ�������ξ��е����԰������߳����ܳ������������˽�У� ��
	//���������ֹ��췽����1 �޲ι��췽�� 2 ����Ϊ�߳��Ĺ��췽����
	
	private int bianchang;
	private int zouchang;
	private int mianji;
	public int getBianchang() {
		return bianchang;
	}
	public void setBianchang(int bianchang) {
		this.bianchang = bianchang;
	}
	public int getZouchang() {
		return zouchang;
	}
	public void setZouchang(int zouchang) {
		this.zouchang = zouchang;
	}
	public int getMianji() {
		return mianji;
	}
	public void setMianji(int mianji) {
		this.mianji = mianji;
	}
	
	
	public void zouchang(){
		
	}
	public void chang(){
		System.out.println(bianchang);
	}
	@Override
	public void Zouchang() {
		// TODO Auto-generated method stub
		System.out.println("�����ε��ܳ��ǣ�"+zouchang);
	}
	@Override
	public void Mianji() {
		// TODO Auto-generated method stub
		System.out.println("�����ε��������"+mianji);
	}
	
	Zhengfangxing(int bianchang){
		
	}
	
	Zhengfangxing(){
		
	}
	
	
}


public class PoliceDog extends Dog{
	/*
	 * ����һ���ࣺ��Ȯ ���̳е�һ����ࣺ��
    ���ԣ����ʱ��
	������work
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
		System.out.println("����"+getVariety()+"Ȯ"+"������"+getColor()+"����"+getAge()+"���ˣ�����"+getWeight()+"���"+"��ϲ����������ϲ���Թ�ͷ��ϲ��˯����"
		+"�������ʱ����"+shisu+"km/h������"+getLeg()+"���ȣ���ÿ�춼Ҫ������");
	}

}

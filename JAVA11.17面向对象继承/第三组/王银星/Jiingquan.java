
public class Jiingquan extends Dog {
	/*
	 * 2  ����һ���ࣺ��Ȯ ���̳е�һ����ࣺ��
	 *  ���ԣ����ʱ��
	 *  ������work
	 */
	private long shisu;
	public long getShisu() {
		return shisu;
	}
	public void setShisu(long shisu) {
		this.shisu = shisu;
	}
	public void work(){
		System.out.println("Ʒ���ǣ�"+getPinzhong()+"����ɫ�ǣ�"+getYanse()+"�������ǣ�"+getZhongliang()+"�������ǣ�"+getNianling()+"���۾���ɫ��:"+getYanjingyanse()
				+"���ȵ������ǣ�"+getTuishu()+"�����ʱ���ǣ�"+getShisu());
	}

}


public class JingDog extends Dog {
			/*2  ����һ���ࣺ��Ȯ ���̳е�һ����ࣺ��
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
		System.out.println("���������:"+shisu);	
	}
}

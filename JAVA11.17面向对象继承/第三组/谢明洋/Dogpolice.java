
public class Dogpolice extends Dog  {
	/*
	 * 2  ����һ���ࣺ��Ȯ ���̳е�һ����ࣺ��
    ���ԣ����ʱ��
	 */
	public int Maxspeed;
	
	
	
	public void work(){
		System.out.println("��һֻƷ��Ϊ"+getKind()+"Ȯ��������ɫ��"
				+getColor() +",��������Ϊ��"
				+getAge()+"����"+getWeight()+"kg�ء�"+"����"+legs+"����"
				+ ",�۾���"+eyecolor+",��������ٶ�Ϊ"+Maxspeed+"km");
	}
	

}

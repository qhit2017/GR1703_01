
public class Test {
	public static void main(String[] args) {
		
		/*
		 * 4  ����һ�������࣬ʵ����һ����Ȯ�������þ�ȮƷ�֡�ë����ɫ�����������䡢�۾���ɫ���ȵ����������ʱ�٣�
     		�������ĳԵķ�����work����
		 */
		Dogpolice d=new Dogpolice();
		
		d.setKind("��������");
		d.setAge(12);
		d.setColor("��");
		d.setWeight(30);
		d.eyecolor="��ɫ";
		d.legs=4;
		d.Maxspeed=60;
		
		d.work();
		d.eat();
		
	}

}

import java.util.MissingFormatArgumentException;


public class si {
	//4  ����һ�������࣬ʵ����һ����Ȯ�������þ�ȮƷ�֡�ë����ɫ�����������䡢�۾���ɫ���ȵ����������ʱ�٣�
    //�������ĳԵķ�����work����
	public static void main(String[] args) {
		er a= new er();
		a.setPz("��Ȯ");
		a.setMs("��ɫ");
		a.setTz(60);
		a.setAge(18);
		a.setYscolor("��ɫ");
		a.info();
		a.setTui(4);
	
		a.shishu();
		a.chi();
		
	}
}
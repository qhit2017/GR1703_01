package lx;

import java.util.ArrayList;
import java.util.List;

public class demo1 {

	public static void main(String[] args) {
		
		List<Student> list = new ArrayList<Student>();
		
		Student a = new Student(); 
		a.setName("����");
		a.setSex('��');
		a.setAge(10);
		a.setAddress("����");
		
		list.add(a);
		
		Student b = new Student();
		b.setName("����");
		b.setSex('��');
		b.setAge(11);
		b.setAddress("����");
		
		list.add(b);
		System.out.println(list.size());
		//��ͨ
		for(int i=0; i<list.size(); i++){
			Student s =list.get(i);
			//s.inof();
		}
		//��ǿforѭ��
		for(Student s:list){
			//s.inof();
		}
		
		//���� Ů 20 ���� 
		for(Student s:list){
			if("����".equals(s.getName())){
				s.setSex('Ů');
				s.setAge(20);
				s.setAddress("����");
			}
		}
	
		for(Student s:list){
		 //s.inof();
		}
	
		for(Student s:list){
			if("����".equals(s.getName())){
				//s.inof();
			}
		}
		
		//list.remove(����)��ArrayList ɾ��ָ��Ԫ��
		for(Student s:list){
			if("����".equals(s.getName())){
				list.remove(s);
			}
		}
		
		for(Student s:list){
			s.inof();
		}
		
		
		
		
		
		
		
		
		
		
	}
}                                                                            

package lx;

import java.util.ArrayList;
import java.util.List;

public class demo1 {

	public static void main(String[] args) {
		
		List<Student> list = new ArrayList<Student>();
		
		Student a = new Student(); 
		a.setName("张三");
		a.setSex('男');
		a.setAge(10);
		a.setAddress("北京");
		
		list.add(a);
		
		Student b = new Student();
		b.setName("李四");
		b.setSex('男');
		b.setAge(11);
		b.setAddress("北京");
		
		list.add(b);
		System.out.println(list.size());
		//普通
		for(int i=0; i<list.size(); i++){
			Student s =list.get(i);
			//s.inof();
		}
		//将强for循环
		for(Student s:list){
			//s.inof();
		}
		
		//张三 女 20 杭州 
		for(Student s:list){
			if("张三".equals(s.getName())){
				s.setSex('女');
				s.setAge(20);
				s.setAddress("杭州");
			}
		}
	
		for(Student s:list){
		 //s.inof();
		}
	
		for(Student s:list){
			if("张三".equals(s.getName())){
				//s.inof();
			}
		}
		
		//list.remove(对象)：ArrayList 删除指定元素
		for(Student s:list){
			if("张三".equals(s.getName())){
				list.remove(s);
			}
		}
		
		for(Student s:list){
			s.inof();
		}
		
		
		
		
		
		
		
		
		
		
	}
}                                                                            

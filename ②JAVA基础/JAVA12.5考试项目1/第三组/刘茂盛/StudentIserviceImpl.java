package com.kaoti1;

import java.util.List;
import java.util.Scanner;

public class StudentIserviceImpl implements StudentIservice{

	@Override
	public void tianjia(List<Student>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入高考信息：格式是 姓名，编号，语文成绩，数学成绩，英语成绩，比如：张三，12，110，100，95");
		Student s=new Student();
		String n= sc.next();
		String []arr=n.split("，");
		s.setName(arr[0]);
		s.setBianhao(arr[1]);
		s.setYuwen(Integer.parseInt(arr[2]));
		s.setMath(Integer.parseInt(arr[3]));
		s.setEnglish(Integer.parseInt(arr[4]));
		s.setTotal(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
		list.add(s);
		System.out.println("添加成功！");
	}

	@Override
	public void findall(List<Student>list,Scanner sc) {
		// TODO Auto-generated method stub
		for(Student s:list){
			s.info();
		}
	}
	@Override
	public void findmax(List<Student>list,Scanner sc) {
		// TODO Auto-generated method stub
		Student s=new Student(); 
		while(true){
			System.out.println("1打印总分最高分2	打印数学最高分3打印语文最高分4打印英语最高分5退出");
			int n=sc.nextInt();
			if(n==1){
				int max=list.get(0).getTotal();
				for(int i=1;i<list.size();i++){
					if(max<list.get(i).getTotal()){
						max=list.get(i).getTotal();
					}
				}
				System.out.println("总分最高分:"+max);		
			}else if(n==2){
				int max=list.get(0).getMath();
				for(int i=1;i<list.size();i++){
					if(max<list.get(i).getMath()){
						max=list.get(i).getMath();
					}
				}
				System.out.println("数学最高分:"+max);
			}else if(n==3){
				int max=list.get(0).getYuwen();
				for(int i=1;i<list.size();i++){
					if(max<list.get(i).getYuwen()){
						max=list.get(i).getYuwen();
					}
				}
				System.out.println("语文最高分:"+max);
			}else if(n==4){
				int max=list.get(0).getEnglish();
				for(int i=1;i<list.size();i++){
					if(max<list.get(i).getEnglish()){
						max=list.get(i).getEnglish();
					}
				}
				System.out.println("英语最高分:"+max);
			}else if(n==5){
				System.out.println("返回上一层！");
				break;
			}else{
				System.out.println("请按提示输入!");
			}
			
		}
	}

}

package comproject;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		List<Student>list= new ArrayList<Student>();
		
		Scanner sc=new Scanner(System.in);
	while(true){
		System.out.println("请选择 1录入考生高考信息 2显示所有考生信息 3查询最高分 4退出");
		int a=sc.nextInt();
	if(a==1){
		System.out.println("请录考生信息 格式：姓名,编号,语文,数学,英语,比如 ：张三 100,80,70,90");
		String str=sc.next();
		String []arr=str.split(",");
		
		Student si=new Student();
		si.setName(arr[0]);
		si.setNumbuter(arr[1]);
		si.setChinese(Integer.parseInt(arr[2]));
		si.setMath(Integer.parseInt(arr[3]));
		si.setEnglish(Integer.parseInt(arr[4]));
		
		si.setTotal(Integer.parseInt(arr[2]+Integer.parseInt(arr[3])+Integer.parseInt(arr[4])));
		list.add(si);
		System.out.println("添加成功");
	
	}else if(a==2){
		System.out.println("显示所有考生信息");
		for(Student s:list){
			s.info();
		}
	}else if(a==3){
		while(true){
		System.out.println("1打印总分最高分 2打印数学最高分 3打印语文最高分 4打印英语最高分 5退出");
		int  i=sc.nextInt();
		if(i==1){
			int max=0;
			for(Student s:list){
				if(max<s.getTotal()){
					max=s.getTotal();
					System.out.println("最高分总分"+max);
				}else if(i==2){
					int chinesemax=0;
					for(Student n:list){
						if(chinesemax<n.getChinese()){
							chinesemax=n.getChinese();
					}
					}
					System.out.println("最高数学分"+chinesemax);
				}else if(i==3){
					int mathmax=0;
					for(Student m:list){
						if(mathmax<m.getMath()){
							mathmax=m.getMath();
						}
					}
					System.out.println("最高语文分"+mathmax);
				}else if(i==4){
					int englishmax=0;
					for(Student q:list){
						if(englishmax<q.getEnglish()){
							englishmax=q.getEnglish();
						}
					}
					
					System.out.println("最高英语分"+englishmax);
				}else if(i==5){
					System.out.println("返回上一层");
					break;
				}else{
					System.out.println("您输入的数字不规范 请从新输入");
				}
			}
				
			}
		}
		
	}else if(a==4){
		System.out.println("程序运行结束");
		break;
	}else{
		System.out.println("您输的数字不规范,请从新输入");
		
	}
		
	}
		
		
		
		
	}
	
	

}

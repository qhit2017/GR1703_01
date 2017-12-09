package Work;
import java.security.Provider.Service;
import java.util.ArrayList;
import java.util.Scanner;


public class Index {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		StudentIservice Service=new StudentserriceImpI();
		ArrayList<Student>list=new ArrayList<Student>();
		while(true){
			System.out.println("请按键1增加学生,2查询所有学生,3按照姓名查询学生信息,4删除学生 ,5修改学生信息,6 退出");
			int a=sc.nextInt();
			if(a==1){
				//添加方法
				Service.insert(list,sc);
			}else if(a==2){	
				//查询学生
				Service.findAll(list);
			}else if(a==3){
			    //按姓名查询
				Service.findByName(list, sc);
			}else if(a==4){
				//删除学生
				System.out.println("请输入学生姓名");
				String name=sc.next();
				for(int i=0;i<list.size();i++){
					Student s=list.get(i);
					if(name.equals(s.getName())){
						list.remove(a);
						break;
						}
				}
						System.out.println("成功删除");
			}else if(a==5){
				//修改学生信息
				System.out.println("输入学生姓名及新的年龄");
				String str=sc.next();
				String[]arr=str.split(",");
				String name=arr[0];
				int age=Integer.parseInt(arr[1]);
				
				for(Student m:list){
					if(name.equals(m.getName())){
						m.setAge(age);
						System.out.println("修改成功");
						break;
					}
					
				
			
						
						
					}
				}
			}
   
			
		}
		
	}



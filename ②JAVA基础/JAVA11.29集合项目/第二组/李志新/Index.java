package com.shijiuhao;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import arr.Array;

public class Index {
	public static void main(String[] args) {
		
		System.out.println("1添加学生2查询所有学生3搜索名字查询学成信息4删除学生5修改信息6退出");
		Scanner sc =new Scanner(System.in);
		List<Student> list =new ArrayList<Student>();
		StudentSeverviceImpl severvise =new StudentSeverviceImpl() ;
		int n=  sc.nextInt();
		while(true){
			if(n==1){
				
				   
				
				severvise.insert(sc, list);
				
				
			}else if(n==2){
				severvise.findAll(list);
				
				
				
			}else if(n==3){
				severvise.bindName(list);
				
			}else if(n==4){
				severvise.Delete(sc, list);
				
				
			}else if(n==5){
				
				
			}else if(n==6){
				
				
			}else{
				
				
			}
		}
		
	}

}

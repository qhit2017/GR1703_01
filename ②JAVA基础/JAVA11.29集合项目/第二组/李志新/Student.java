package com.shijiuhao;

public class Student {
	
	
		private String name;
		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public char getSex() {
			return sex;
		}

		public void setSex(char sex) {
			this.sex = sex;
		}

		private char  sex;
		
		public void info(){
			System.out.println("我是："+name+",我是："+sex+"生");
	}

}

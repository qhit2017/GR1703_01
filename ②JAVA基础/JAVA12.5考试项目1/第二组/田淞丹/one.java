package tsd;

public class one {
	//1、录入考试信息信息包含姓名、编号、语文、数学、英语成绩，并计算出总成绩
	
	
		private String name;
		private String bianhao;
		private	int  yuwen;
		private int shuxue;
		private int yingyu;
		private int chengji;
		public int getChengji() {
			return chengji;
		}
		public void setChengji(int chengji) {
			this.chengji = chengji;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getBianhao() {
			return bianhao;
		}
		public void setBianhao(String bianhao) {
			this.bianhao = bianhao;
		}
		public int getYuwen() {
			return yuwen;
		}
		public void setYuwen(int yuwen) {
			this.yuwen = yuwen;
		}
		public int getShuxue() {
			return shuxue;
		}
		public void setShuxue(int shuxue) {
			this.shuxue = shuxue;
		}
		public int getYingyu() {
			return yingyu;
		}
		public void setYingyu(int yingyu) {
			this.yingyu = yingyu;
		}
		public void info(){
			System.out.println("名字："+name+",编号："+bianhao+",语文："+yuwen+",数学："+shuxue+",英语："+yingyu+",总成绩："+chengji);
		}
	}


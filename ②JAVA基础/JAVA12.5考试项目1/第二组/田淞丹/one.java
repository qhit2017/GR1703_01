package tsd;

public class one {
	//1��¼�뿼����Ϣ��Ϣ������������š����ġ���ѧ��Ӣ��ɼ�����������ܳɼ�
	
	
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
			System.out.println("���֣�"+name+",��ţ�"+bianhao+",���ģ�"+yuwen+",��ѧ��"+shuxue+",Ӣ�"+yingyu+",�ܳɼ���"+chengji);
		}
	}


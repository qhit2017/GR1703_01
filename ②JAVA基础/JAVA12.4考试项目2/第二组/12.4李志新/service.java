package com.lizhixin;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public interface service {
	void Addto(List<People> list ,Scanner sc);
	//�����Ϣ
	void Inquireall(List<People> list);
	//��ѯȫ��
	void queryName(List<People> list,Scanner sc);
	//��ѯ����
	void querySex(List<People> list,Scanner sc);
	//��ѯ�Ա�
	void queryNum(List<People> list,Scanner sc);
	//��ѯ�绰����
}

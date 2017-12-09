package homework;

import java.util.List;
import java.util.Scanner;

public interface method {
	void Addpeople(List<CommunicationInfor> list,Scanner input);
	void findAll(List<CommunicationInfor> list);
	void findbyname(List<CommunicationInfor> list,Scanner input);
	void findbysex	(List<CommunicationInfor> list,Scanner input);
	void findbynumber(List<CommunicationInfor> list,Scanner input);

}

package co.yedam.friend;

public class FriendMain {
	/*
	 * ģ�� ��� ���� �̸� , ����ó, email,Ű ������ 1.���, 2.��ȸ(�̸�), 3.���, 4.����(�̸�������), 5.���� 9.����
	 */
	private String Name;
	private String Phone;
	private String Email;
	private String height;
	private String weight;

	public FriendMain(String name, String phone, String email, String height, String weight) {

		Name = name;
		Phone = phone;
		Email = email;
		this.height = height;
		this.weight = weight;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public void showInfo() {
		System.out.printf("[ģ���̸� : %s, ����ó : %s, E-mail : %s, Ű : %s ,������ : %s, \n", Name, Phone, Email, height,
				weight);
	}

}

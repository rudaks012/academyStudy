package co.micol.prj.vo;

public class DevVO { // VO 객체 , DTO
	private int id;
	private String name;
	private String address;
	private int age;

	public DevVO() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String toString() {
		System.out.print("아이디 : " + id + " ");
		System.out.print("이름 : " + name + " ");
		System.out.print("주소 : " + address + " ");
		System.out.println("나이 : " + age + " ");
		return null;
	}
}

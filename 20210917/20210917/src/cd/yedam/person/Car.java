package cd.yedam.person;

public class Car { // �ʵ� Ȯ���ϱ� �����ʸ��콺 source > ���ʷ����� getter and setter
	// ������ ����� �ʵ� Ȯ���ϱ� �����ʸ��콺 source > contructor filed
	//�޼ҵ� �����ʸ��콺 source > ���ʷ����� getter and setter
	
	// �ʵ�
	private String carName;
	private String carModel;
	private int carPrice;
	private int maxSpped;
	private Tire tire;
	
	//������
	public Car(String carName, String carModel, int carPrice, int maxSpped, Tire tire) {
		
		this.carName = carName;
		this.carModel = carModel;
		this.carPrice = carPrice;
		this.maxSpped = maxSpped;
		this.tire = tire;
	}
//�޼ҵ�

	public String getCarName() {	//select * from employee;
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}

	public String getCarModel() {
		return carModel;
	}

	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}

	public int getCarPrice() {
		return carPrice;
	}

	public void setCarPrice(int carPrice) {
		this.carPrice = carPrice;
	}

	public int getMaxSpped() {
		return maxSpped;
	}

	public void setMaxSpped(int maxSpped) {
		this.maxSpped = maxSpped;
	}

	public Tire getTire() {
		return tire;
	}

	public void setTire(Tire tire) {
		this.tire = tire;
	}
	
	


}

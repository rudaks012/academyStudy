package co.yedam.inherit;

import cd.yedam.inherit.Vehicle;

public class VegicleExample  {
	public static void main(String[] args) {
		Vehicle vehicle = new Vehicle("");
		vehicle.run(); // protected
							//������ ���ϴ� ������ = > ���� ������
		vehicle.stop(); // default
	}
}

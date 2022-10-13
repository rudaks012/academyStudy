package co.yedam.inherit;

import cd.yedam.inherit.Vehicle;

public class VegicleExample  {
	public static void main(String[] args) {
		Vehicle vehicle = new Vehicle("");
		vehicle.run(); // protected
							//수준을 정하는 지시자 = > 접근 지시자
		vehicle.stop(); // default
	}
}

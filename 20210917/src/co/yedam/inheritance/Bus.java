package co.yedam.inheritance;

import cd.yedam.inherit.Vehicle;

public class Bus extends Vehicle {
	
	public Bus() {
		super("msg");
	}

	@Override
	protected void run() {
		super.run();
		System.out.println("버스가 달립니다.");
	}

	@Override
	public void stop() {
		super.stop();
	}

	
}

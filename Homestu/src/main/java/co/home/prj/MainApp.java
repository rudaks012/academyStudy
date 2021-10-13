package co.home.prj;

import co.home.prj.comm.GB;
import co.home.prj.comm.Login;
import co.home.prj.comm.Menu;

public class MainApp {
	public static void main(String[] args) {
		Login login = new Login();
		Menu menu = new Menu();
		login.run();
		menu.run();
		GB.sc.close();
		
	}

}

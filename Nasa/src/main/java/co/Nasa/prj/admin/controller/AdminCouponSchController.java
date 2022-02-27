package co.Nasa.prj.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import co.Nasa.prj.admin.service.AdminCouponMapper;

@Component
public class AdminCouponSchController {
	
	@Autowired
	AdminCouponMapper AdminDao;

	
	@Scheduled(cron = "0 0 3 1 * ?")
	// "0 0 3 1 * ?"  매월 1일 3시에 쿠폰 업데이트
	//00 03 1 * * 매월 1일 3시에
	// 0 * * * * * 1분마다
	public void test () {
		AdminDao.schcoupondelete();
		
		AdminDao.schcouponupdate1();
		AdminDao.schcouponupdate2();
		AdminDao.schcouponupdate3();
		AdminDao.schcouponupdate4();
		
		System.out.println("dely 3000");
	}

}

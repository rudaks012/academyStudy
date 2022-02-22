package co.Nasa.prj.admin.blacklist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BlacklistController {
 @RequestMapping("/manage_blackList.do")
 public String manage_blackList() {
	 return "admin/report/manageBlackList";
 }
}

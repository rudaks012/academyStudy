package co.Nasa.prj.login.service;

import java.util.List;


public interface LoginService {
	public List<LoginVO> selectListbuyer();
	LoginVO selectbuyer(LoginVO vo);
	LoginVO selectbuyerId(LoginVO vo);
	LoginVO readMemberInfo(String b_email);
}

package co.Nasa.prj.login.service;

import java.util.List;

public interface LoginMapper {
	public List<LoginVO> selectListbuyer();
	LoginVO selectbuyer(LoginVO vo);
	LoginVO selectbuyerId(LoginVO vo);
}

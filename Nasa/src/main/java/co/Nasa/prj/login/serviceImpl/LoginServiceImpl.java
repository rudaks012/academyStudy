package co.Nasa.prj.login.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.Nasa.prj.login.service.LoginMapper;
import co.Nasa.prj.login.service.LoginService;
import co.Nasa.prj.login.service.LoginVO;

@Repository("LoginDao")
public class LoginServiceImpl implements LoginService {
	@Autowired
	LoginMapper map;
	

	@Override
	public List<LoginVO> selectListbuyer() {
		// TODO Auto-generated method stub
		return map.selectListbuyer();
	}

	@Override
	public LoginVO selectbuyer(LoginVO vo) {
		// TODO Auto-generated method stub
		return map.selectbuyer(vo);
	}

	@Override
	public LoginVO selectbuyerId(LoginVO vo) {
		// TODO Auto-generated method stub
		return map.selectbuyerId(vo);
	}
}

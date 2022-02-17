package co.Nasa.prj.login.service;

import java.util.List;

public interface LoginService {
	public List<HostVO> selectListHost();
	HostVO selectHost(HostVO vo);
	HostVO selectHostId(HostVO vo);
	
}

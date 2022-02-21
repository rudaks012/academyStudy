package co.Nasa.prj.buyer.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.Nasa.prj.buyer.service.BuyerMapper;
import co.Nasa.prj.buyer.service.BuyerService;
import co.Nasa.prj.comm.VO.BuyerVO;

@Repository("BuyerDao")
public class BuyerServiceImpl implements BuyerService {

	@Autowired
	BuyerMapper map;

	@Override
	public BuyerVO selectBuyer(BuyerVO vo) {
		// TODO Auto-generated method stub
		return map.selectBuyer(vo);
	}}

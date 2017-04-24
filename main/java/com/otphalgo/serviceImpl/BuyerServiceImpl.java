package com.otphalgo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otphalgo.dao.BuyerDAO;
import com.otphalgo.service.BuyerService;
import com.otphalgo.vo.BuyerVO;

@Service("buyerservice")
public class BuyerServiceImpl implements BuyerService {
	
	@Autowired
	BuyerDAO dao;

	@Override
	public List<BuyerVO> selectBuyerAll() {
		return dao.selectBuyerAll();
	}

	@Override
	public BuyerVO selectBuyerOne(BuyerVO bvo) {
		return dao.selectBuyerOne(bvo);
	}

	@Override
	public BuyerVO selectBuyerCheck(BuyerVO bvo) {
		return dao.selectBuyerCheck(bvo);
	}

	@Override
	public void insertBuyer(BuyerVO bvo) {
		dao.insertBuyer(bvo);
	}

	@Override
	public void updateBuyer(BuyerVO bvo) {
		dao.updateBuyer(bvo);
	}

	@Override
	public void deleteBuyer(BuyerVO bvo) {
		dao.deleteBuyer(bvo);
	}

}

package com.otphalgo.serviceImpl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otphalgo.dao.BuyerDAO;
import com.otphalgo.service.BuyerService;
import com.otphalgo.vo.BuyerVO;
import com.otphalgo.vo.MemberVO;

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
	public MemberVO selectBuyerCheck(MemberVO mvo) {
		return dao.selectBuyerCheck(mvo);
	}

	@Override
	public void insertBuyer(BuyerVO bvo) {
		bvo.setNum("b"+UUID.randomUUID().toString().replace("-", ""));
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

	@Override
	public MemberVO loginBuyer(MemberVO mvo) {
		return dao.loginBuyer(mvo);
	}

}

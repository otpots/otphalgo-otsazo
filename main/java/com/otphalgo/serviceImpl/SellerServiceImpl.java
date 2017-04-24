package com.otphalgo.serviceImpl;

import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otphalgo.controller.SellerController;
import com.otphalgo.dao.SellerDAO;
import com.otphalgo.service.SellerService;
import com.otphalgo.vo.MemberVO;
import com.otphalgo.vo.SellerVO;

@Service("sellerservice")
public class SellerServiceImpl implements SellerService {
	
	private static final Logger log = LoggerFactory.getLogger(SellerController.class);
	
	@Autowired
	SellerDAO dao;

	@Override
	public List<SellerVO> selectSellerAll() {
		return dao.selectSellerAll();
	}

	@Override
	public SellerVO selectSellerOne(SellerVO svo) {
		return dao.selectSellerOne(svo);
	}

	@Override
	public SellerVO selectSellerCheck(SellerVO svo) {
		return dao.selectSellerCheck(svo);
	}

	@Override
	public void insertSeller(SellerVO svo) {
		svo.setNum("s"+UUID.randomUUID().toString().replace("-", ""));
		log.info(svo.toString());
		dao.insertSeller(svo);
	}

	@Override
	public void updateSeller(SellerVO svo) {
		dao.updateSeller(svo);
	}

	@Override
	public void deleteSeller(SellerVO svo) {
		dao.deleteSeller(svo);
	}

	@Override
	public MemberVO loginSeller(MemberVO mvo) {
		return dao.loginSeller(mvo);
	}
	
	

}

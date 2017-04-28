package com.otphalgo.serviceImpl;

import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otphalgo.dao.MemberDAO;
import com.otphalgo.service.MemberService;
import com.otphalgo.vo.MemberVO;
import com.otphalgo.vo.SellerVO;

@Service("memberservice")
public class MemberServiceImpl implements MemberService {
	
	private static final Logger log = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	@Autowired
	MemberDAO dao;

	@Override
	public MemberVO selectOneMember(MemberVO mvo) {
		return dao.selectOneMember(mvo);
	}

	@Override
	public void insertBuyer(MemberVO mvo) {
		String buyerNum = "b"+UUID.randomUUID().toString().replace("-", "");
		mvo.setNum(buyerNum);
		mvo.setAutho("b");
		
		log.info("service : VO : "+mvo.toString());
		
		dao.insertBuyer(mvo);
	}

	@Override
	public void insertSeller(MemberVO mvo, SellerVO svo) {
		String sellerNum = "s"+UUID.randomUUID().toString().replace("-", "");
		mvo.setNum(sellerNum);
		svo.setNum(sellerNum);
		mvo.setAutho("s");
		svo.setAutho("s");
		
		log.info("service : VO1 : "+mvo.toString());
		log.info("service : VO2 : "+svo.toString());
		
		dao.insertSeller(mvo, svo);
	}

	@Override
	public void updateBuyer(MemberVO mvo) {
		dao.updateBuyer(mvo);
	}

	@Override
	public void updateSeller(MemberVO mvo, SellerVO svo) {
		dao.updateSeller(mvo, svo);
	}

}

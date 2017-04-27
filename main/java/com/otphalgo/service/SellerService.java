package com.otphalgo.service;

import java.util.List;

import com.otphalgo.vo.MemberVO;
import com.otphalgo.vo.SellerVO;

public interface SellerService {
	
	List<SellerVO> selectSellerAll();
	SellerVO selectSellerOne(SellerVO svo);
	MemberVO selectSellerCheck(MemberVO mvo);
	void insertSeller(SellerVO svo);
	void updateSeller(SellerVO svo);
	void deleteSeller(SellerVO svo);
	MemberVO loginSeller(MemberVO mvo);

}
